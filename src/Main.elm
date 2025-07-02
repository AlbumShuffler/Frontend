port module Main exposing (..)

import AlbumIds
import Albums exposing (Album, ArtistInfo)
import Array exposing (Array)
import ArrayExtra as Array
import MaybeExtra as Maybe
import ArtistIds
import ArtistSelection exposing (ArtistSelection(..))
import ArtistsWithAlbums exposing (albumStorage)
import AssocList as AList exposing (Dict)
import Browser
import Html exposing (Html, div, img, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Html.Events.Extra
import List.Extra as List
import Platform.Cmd as Cmd
import Random
import Random.List
import Regex
import TextRessources
import Albums exposing (ArtistWithAlbums)
import Dict as Dict
import Providers
import ProviderStorage
import Debug
import Albums exposing (CoverImage)
import Html exposing (s)
import Html.Events exposing (on)

{- 
    The following function would be more at home in the ArtistsWithAlbums file but since
    that file is auto-generated be keep the functionality here
-}
albumStorageForProvider : String -> Maybe (List ArtistWithAlbums)
albumStorageForProvider providerName =
    albumStorage |> Dict.get providerName


defaultArtist : String -> ArtistInfo
defaultArtist providerName =
    case albumStorageForProvider providerName of
        Just artist ->
            artist
            |> List.head
            |> Maybe.map (\f -> f.artist)
            |> Maybe.withDefault Albums.emptyArtistInfo

        Nothing ->
            Albums.emptyArtistInfo


defaultArtistShortName : String -> String
defaultArtistShortName providerName =
    (providerName |> defaultArtist).shortName


defaultText : TextRessources.Text
defaultText =
    TextRessources.englishText


type alias Flags =
    { blockedAlbums : List String
    , language : String
    , lastSelectedArtists : List String
    , lastSelectedProvider: String
    , allowMultipleSelection : Bool
    }


type alias Blacklist =
    Dict ArtistIds.ArtistId (List AlbumIds.AlbumId)


type alias Model =
    { blacklistedAlbums : Blacklist
    , albums : Array Album
    , current : Int
    , isInitialized : Bool
    , currentArtist : ArtistSelection.ArtistSelection
    , currentProvider: Providers.Provider
    , isArtistOverlayOpen : Bool
    , isProviderOverlayOpen : Bool
    , isInformationOverlayOpen : Bool
    , allowMultipleArtistSelection : Bool
    , text : TextRessources.Text
    , overlayActionTaken : Bool
    }


type alias OverlayItem a =
    { id: String
    , text: String
    , images: List CoverImage
    , data: a
    }


port setBlacklistedAlbums : List String -> Cmd msg


port setLastSelectedArtist : List String -> Cmd msg


port setLastSelectedProvider : String -> Cmd msg


port setLastSelectedLanguage : String -> Cmd msg


port setAllowMultipleSelection : Bool -> Cmd msg


port arrowKeyReceiver : (String -> msg) -> Sub msg

subscriptions : Model -> Sub Msg
subscriptions _ =
    arrowKeyReceiver ArrowKeyReceived


emptyModel : Maybe Blacklist -> Maybe TextRessources.Text -> ArtistSelection.ArtistSelection -> Providers.Provider -> Bool -> Model
emptyModel blacklistOption language currentArtist currentProvider allowMultipleArtistSelection =
    let
        text =
            language |> Maybe.withDefault defaultText

        artists =
            currentArtist |> ArtistSelection.toList


        storage =
            currentProvider.id
            |> albumStorageForProvider
            |> Maybe.withDefault []

        artistsWithAlbums =
            artists
                |> List.map
                    (\a ->
                        storage |> List.find (\withAlbums -> (withAlbums.artist.shortName |> String.toLower) == (a.shortName |> String.toLower))
                    )
                |> List.filterMap identity

        -- There is no concat/flat/select many for arrays
        albums =
            artistsWithAlbums
                |> List.map (\a -> a.albums |> Array.toList)
                |> List.concat
                |> Array.fromList

        blacklist =
            blacklistOption |> Maybe.withDefault AList.empty

        blacklistedForCurrentArtist =
            let
                artistIds =
                    artists |> List.map (\a -> a.id)
            in
            artistIds
                |> List.map (\id -> blacklist |> AList.get id |> Maybe.withDefault [])
                |> List.concat

        nonblacklistedAlbums =
            albums
                |> Array.filter (\album -> not <| (blacklistedForCurrentArtist |> List.member album.id))
    in
    { blacklistedAlbums = blacklist
    , albums = nonblacklistedAlbums
    , current = 0
    , isInitialized = False
    , currentArtist = currentArtist
    , currentProvider = currentProvider
    , isArtistOverlayOpen = False
    , isProviderOverlayOpen = False
    , isInformationOverlayOpen = False
    , text = text
    , allowMultipleArtistSelection = allowMultipleArtistSelection
    , overlayActionTaken = False
    }


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }


type
    Msg
    -- Partially resets the model to change the current artist selection
    = Reset ArtistSelection.ArtistSelection (Maybe Providers.Provider)
      -- Removes all blacklist entries for the currently selected artists
    | ResetBlacklist
      -- Received from ports when the blacklist was read from local storage
    | GotBlacklist (List String)
      -- Received from ports when the browser language was determined
    | GotBrowserLanguage String
    | NextAlbum
    | PreviousAlbum
      -- Albums have been shuffled (required because it uses a random generator)
    | AlbumsShuffled (List Album)
      -- Blacklists the given album; ArtistId required to clearly identify the song
    | BlackListAlbum ( ArtistIds.ArtistId, AlbumIds.AlbumId )
      -- Artist overlay
    | OpenArtistOverlay
    | CloseArtistOverlay ArtistSelection.ArtistSelection
    | OverlayArtistSelected ArtistInfo
      -- Provider overlay
    | OpenProviderOverlay
    | CloseProviderOverlay (Maybe Providers.Provider)
      -- Information overlay
    | OpenInformationOverlay
    | CloseInformationOverlay
      --
    | ToggleLanguage
    | ToggleAllowMultipleSelection
    | ArrowKeyReceived String
    | ChangeCurrentProvider


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        currentProvider =
            ProviderStorage.all 
            |> List.find (\p -> p.id == flags.lastSelectedProvider)
            |> Maybe.withDefault ProviderStorage.default


        defaultArtistForCurrentProvider =
            currentProvider.id |> defaultArtist

        currentArtist =
            if flags.lastSelectedArtists == [] then
                currentProvider.id |> defaultArtist |> ArtistSelection.SingleArtistSelected

            else if flags.allowMultipleSelection then
                let
                    selection =
                        if flags.lastSelectedArtists |> List.isEmpty then
                            [ currentProvider.id |> defaultArtistShortName ]

                        else
                            flags.lastSelectedArtists
                in
                selection
                    |> List.map
                        (\shortName ->
                            (currentProvider.id |> albumStorageForProvider)
                                |> Maybe.withDefault []
                                |> List.find
                                    (\storageItem ->
                                        (storageItem.artist.shortName
                                            |> String.toLower
                                        )
                                            == (shortName |> String.toLower)
                                    )
                        )
                    |> List.filterMap identity
                    |> List.map (\a -> a.artist)
                    |> ArtistSelection.MultipleArtistsSelected

            else
                let
                    shortName =
                        flags.lastSelectedArtists |> List.head |> Maybe.withDefault (currentProvider.id |> defaultArtistShortName)
                in
                currentProvider.id
                    |> albumStorageForProvider
                    |> Maybe.withDefault []
                    |> List.find (\a -> (a.artist.shortName |> String.toLower) == shortName)
                    |> Maybe.map (\a -> a.artist)
                    |> Maybe.withDefault defaultArtistForCurrentProvider
                    |> ArtistSelection.SingleArtistSelected

        text =
            TextRessources.all |> Array.toList |> List.find (\t -> t.key == flags.language)

        blacklist =
            flags.blockedAlbums |> blackListFromStringList

        model =
            emptyModel (Just blacklist) text currentArtist currentProvider flags.allowMultipleSelection
    in
    ( model, model.albums |> startShuffleAlbums )


startShuffleAlbums : Array Album -> Cmd Msg
startShuffleAlbums albums =
    let
        generator =
            Random.List.shuffle (albums |> Array.toList)
    in
    generator |> Random.generate AlbumsShuffled


resetModel : ArtistSelection.ArtistSelection -> Maybe Providers.Provider -> Maybe Blacklist -> TextRessources.Text -> Bool -> ( Model, Cmd Msg )
resetModel artist providerOption blacklist text allowMultipleArtistSelection =
    let
        provider = 
            providerOption
            |> Maybe.withDefault ProviderStorage.default

        ensureArtist =
            case artist of
                NoArtistSelected ->
                    defaultArtist provider.id |> ArtistSelection.SingleArtistSelected
                SingleArtistSelected s -> SingleArtistSelected s
                MultipleArtistsSelected many -> MultipleArtistsSelected many

        resettedModel =
            emptyModel blacklist (Just text) ensureArtist provider allowMultipleArtistSelection

        serializedBlacklist =
            blacklist |> Maybe.map blackListToStringList |> Maybe.withDefault []

        artistShortnames =
            ensureArtist
                |> ArtistSelection.toList
                |> List.map (\a -> a.shortName)

        commands =
            [ serializedBlacklist |> setBlacklistedAlbums
            , resettedModel.albums |> startShuffleAlbums
            , artistShortnames |> setLastSelectedArtist
            , provider.id |> setLastSelectedProvider
            , allowMultipleArtistSelection |> setAllowMultipleSelection
            ]
    in
    ( resettedModel, Cmd.batch commands )


addToBlacklist : ArtistIds.ArtistId -> AlbumIds.AlbumId -> Blacklist -> Blacklist
addToBlacklist artistId albumId dict =
    case dict |> AList.get artistId of
        Just existing ->
            dict |> AList.remove artistId |> AList.insert artistId (albumId :: existing)

        Nothing ->
            dict |> AList.insert artistId [ albumId ]


resetBlackList : List ArtistIds.ArtistId -> Model -> ( Model, Cmd Msg )
resetBlackList artistsToClear model =
    let
        updatedBlacklist =
            artistsToClear |> List.foldl (\artistId dict -> dict |> AList.remove artistId) model.blacklistedAlbums

        artistsWithAlbums =
            model.currentArtist
                |> ArtistSelection.toList
                |> List.map
                    (\a ->
                        albumStorageForProvider model.currentProvider.id
                            |> Maybe.withDefault []
                            |> List.find (\withAlbums -> (withAlbums.artist.shortName |> String.toLower) == (a.shortName |> String.toLower))
                    )
                |> List.filterMap identity

        -- There is no concat/flat/select many for arrays
        albums =
            artistsWithAlbums
                |> List.map (\a -> a.albums |> Array.toList)
                |> List.concat
                |> Array.fromList

        serializedBlacklist =
            updatedBlacklist |> blackListToStringList
    in
    ( { model | albums = albums, blacklistedAlbums = updatedBlacklist }, Cmd.batch [ serializedBlacklist |> setBlacklistedAlbums, albums |> startShuffleAlbums ] )


blackListToStringList : Blacklist -> List String
blackListToStringList blacklist =
    let
        pairs =
            blacklist |> AList.toList
    in
    pairs
        |> List.map
            (\( artistId, albumIds ) ->
                albumIds |> List.map (\albumId -> (artistId |> ArtistIds.value) ++ ";;" ++ (albumId |> AlbumIds.value))
            )
        |> List.concat


blackListFromStringList : List String -> Blacklist
blackListFromStringList list =
    let
        tuples =
            list
                |> List.map
                    (\t ->
                        let
                            parts =
                                t |> String.split ";;"

                            first =
                                parts |> List.head

                            second =
                                parts |> List.tail |> Maybe.withDefault [] |> List.head
                        in
                        case ( first, second ) of
                            ( Just f, Just s ) ->
                                Just ( f |> ArtistIds.ArtistId, s |> AlbumIds.AlbumId )

                            ( Just _, Nothing ) ->
                                Nothing

                            ( Nothing, Just _ ) ->
                                Nothing

                            ( Nothing, Nothing ) ->
                                Nothing
                    )
                |> List.filterMap identity

        grouped =
            tuples
                |> List.map Tuple.first
                |> List.map (\artistId -> ( artistId, tuples |> List.filter (\( artId, _ ) -> artId == artistId) |> List.map Tuple.second ))
    in
    grouped |> AList.fromList


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Reset artistSelection provider ->
            resetModel artistSelection provider (Just model.blacklistedAlbums) model.text model.allowMultipleArtistSelection

        ResetBlacklist ->
            resetBlackList (model.currentArtist |> ArtistSelection.toList |> List.map (\a -> a.id)) model

        GotBlacklist strings ->
            let
                blacklist =
                    strings |> blackListFromStringList

                artistIds =
                    model.currentArtist
                        |> ArtistSelection.toList
                        |> List.map (\a -> a.id)

                blacklistedForCurrentArtists =
                    artistIds
                        |> List.map (\id -> blacklist |> AList.get id)
                        |> List.filterMap identity
                        |> List.concat

                filteredAlbums =
                    model.albums |> Array.filter (\a -> not (blacklistedForCurrentArtists |> List.member a.id))
            in
            ( { model | blacklistedAlbums = blacklist, albums = filteredAlbums }, filteredAlbums |> startShuffleAlbums )

        GotBrowserLanguage rawLanguage ->
            let
                language =
                    case
                        if rawLanguage == "" then
                            "en"

                        else
                            rawLanguage
                    of
                        "en" ->
                            TextRessources.englishText

                        "de" ->
                            TextRessources.germanText

                        _ ->
                            TextRessources.englishText
            in
            ( { model | text = language }, Cmd.none )

        NextAlbum ->
            let
                newModel =
                    { model | current = modBy (model.albums |> Array.length) (model.current + 1) }
            in
            ( newModel, Cmd.none )

        PreviousAlbum ->
            let
                newModel =
                    { model | current = modBy (model.albums |> Array.length) (model.current - 1) }
            in
            ( newModel, Cmd.none )

        BlackListAlbum ( artistId, albumId ) ->
            {- Blacklisting an album removes it from the current album array.
               Since the array is traversed by a counter nothing needs to change as the counter will now
               point to the next album.
            -}
            let
                updatedAlbums =
                    model.albums |> Array.filter (\a -> a.id /= albumId)

                updatedCounter =
                    if model.current >= (updatedAlbums |> Array.length) then
                        0

                    else
                        model.current

                updatedModel =
                    { model
                        | albums = updatedAlbums
                        , current = updatedCounter
                        , blacklistedAlbums = addToBlacklist artistId albumId model.blacklistedAlbums
                    }

                newCmd =
                    let
                        mapped =
                            updatedModel.blacklistedAlbums |> blackListToStringList
                    in
                    mapped |> setBlacklistedAlbums
            in
            ( updatedModel, newCmd )

        AlbumsShuffled albums ->
            ( { model | albums = albums |> Array.fromList, isInitialized = True }, Cmd.none )

        OpenArtistOverlay ->
            ( { model | isArtistOverlayOpen = True, isProviderOverlayOpen = False }, Cmd.none )

        CloseArtistOverlay newSelection ->
            case newSelection of
                -- keep old selection, we do not want to enter a state where no artist is selected
                ArtistSelection.NoArtistSelected ->
                    ( { model | isArtistOverlayOpen = False, overlayActionTaken = False }, Cmd.none )

                SingleArtistSelected _ ->
                    if newSelection == model.currentArtist then
                        ( { model | isArtistOverlayOpen = False }, Cmd.none )

                    else
                        resetModel newSelection (Just model.currentProvider) (Just model.blacklistedAlbums) model.text model.allowMultipleArtistSelection

                MultipleArtistsSelected _ ->
                    if model.overlayActionTaken then
                        resetModel newSelection (Just model.currentProvider) (Just model.blacklistedAlbums) model.text model.allowMultipleArtistSelection

                    else
                        ( { model | isArtistOverlayOpen = False, overlayActionTaken = False }, Cmd.none )

        OpenProviderOverlay ->
            ( { model | isArtistOverlayOpen = False, isProviderOverlayOpen = True }, Cmd.none)

        CloseProviderOverlay (Just provider) ->
            if provider == model.currentProvider then
                ( { model | isProviderOverlayOpen = False }, Cmd.none )
            else
                resetModel NoArtistSelected (Just provider) (Just model.blacklistedAlbums) model.text model.allowMultipleArtistSelection

        CloseProviderOverlay Nothing ->
            ( { model | isProviderOverlayOpen = False }, Cmd.none )

        ToggleLanguage ->
            let
                nextLanguage =
                    TextRessources.all
                        |> Array.toIndexedList
                        |> List.find (\( _, t ) -> t == model.text)
                        |> Maybe.map Tuple.first
                        |> Maybe.andThen (\i -> TextRessources.all |> Array.get (modBy (TextRessources.all |> Array.length) (i + 1)))
                        |> Maybe.withDefault TextRessources.fallback
            in
            ( { model | text = nextLanguage }, nextLanguage.key |> setLastSelectedLanguage )

        ToggleAllowMultipleSelection ->
            let
                newState =
                    not <| model.allowMultipleArtistSelection

                newSelection =
                    if newState == True then
                        -- Switching from single selection to multi selection we need to convert a single-selection
                        -- into a singleton multi-select
                        case model.currentArtist of
                            NoArtistSelected ->
                                NoArtistSelected

                            SingleArtistSelected x ->
                                MultipleArtistsSelected [ x ]

                            MultipleArtistsSelected many ->
                                MultipleArtistsSelected many

                    else
                        -- Switching from multiple selection to a single selection needs to reduce the count of
                        -- selected artists
                        case model.currentArtist of
                            NoArtistSelected ->
                                NoArtistSelected

                            SingleArtistSelected x ->
                                SingleArtistSelected x

                            MultipleArtistsSelected many ->
                                MultipleArtistsSelected (many |> List.head |> Maybe.map List.singleton |> Maybe.withDefault [])
            in
            ( { model | allowMultipleArtistSelection = newState, currentArtist = newSelection, overlayActionTaken = True }, Cmd.none )

        OverlayArtistSelected artist ->
            case model.currentArtist of
                NoArtistSelected ->
                    let
                        selection =
                            if model.allowMultipleArtistSelection then
                                [ artist ] |> ArtistSelection.MultipleArtistsSelected

                            else
                                artist |> ArtistSelection.SingleArtistSelected
                    in
                    ( { model | currentArtist = selection }, Cmd.none )

                SingleArtistSelected previous ->
                    let
                        selection =
                            if previous == artist then
                                NoArtistSelected

                            else if model.allowMultipleArtistSelection then
                                [ previous, artist ] |> ArtistSelection.MultipleArtistsSelected

                            else
                                artist |> ArtistSelection.SingleArtistSelected
                    in
                    ( { model | currentArtist = selection }, Cmd.none )

                MultipleArtistsSelected previousArtists ->
                    let
                        selection =
                            if model.allowMultipleArtistSelection then
                                if previousArtists |> List.any (\prev -> prev == artist) then
                                    previousArtists |> List.filter (\prev -> prev /= artist) |> ArtistSelection.MultipleArtistsSelected

                                else
                                    (artist :: previousArtists) |> ArtistSelection.MultipleArtistsSelected

                            else
                                artist |> ArtistSelection.SingleArtistSelected

                        nonEmptySelection =
                            if selection |> ArtistSelection.toList |> List.isEmpty then
                                model.currentArtist

                            else
                                selection
                    in
                    ( { model | currentArtist = nonEmptySelection, overlayActionTaken = True }, Cmd.none )

        ArrowKeyReceived direction ->
            if direction == "right" then
                let
                    newModel =
                        { model | current = modBy (model.albums |> Array.length) (model.current + 1) }
                in
                ( newModel, Cmd.none )
            else if direction == "left" then
                let
                    newModel =
                        { model | current = modBy (model.albums |> Array.length) (model.current - 1) }
                in
                ( newModel, Cmd.none )
            else
                (model, Cmd.none)

        ChangeCurrentProvider ->
            {- dummy implementation -}
            (model, model.currentProvider.id |> setLastSelectedProvider)

        OpenInformationOverlay ->
            ( { model | isInformationOverlayOpen = True }, Cmd.none )

        CloseInformationOverlay ->
            ( { model | isInformationOverlayOpen = False }, Cmd.none )


tryAlbumNumberFrom : String -> Maybe Int
tryAlbumNumberFrom input =
    let
        albumNumber =
            Maybe.withDefault Regex.never <| Regex.fromString "\\d\\d\\d"
    in
    Regex.find albumNumber input
        |> List.head
        |> Maybe.map (\match -> match.match)
        |> Maybe.andThen String.toInt


view : Model -> Html Msg
view model =
    let
        artistIds =
            model.currentArtist
                |> ArtistSelection.toList
                |> List.map (\a -> a.id)

        albumStorage = 
            model.currentProvider.id
            |> albumStorageForProvider
            |> Maybe.withDefault []

        numberOfBlacklistedAlbums =
            artistIds
                |> List.map (\id -> model.blacklistedAlbums |> AList.get id)
                |> List.foldl
                    (\next acc ->
                        case next of
                            Nothing ->
                                acc

                            Just d ->
                                (d |> List.length) + acc
                    )
                    0
    in
    {---------------------------
        INITIAL BOOTSTRAPPING
    ---------------------------}
    if model.isInitialized == False then
        div
            [ class "white-text status-text-container" ]
            [ div [ class "status-text" ] [ text "Loading ..." ] ]
        {-------------------------------------------------------------
        NO ALBUMS IN POOL
        There is no need to check `model.albums |> Array.isEmpty`
        because that is part of the regular view
        -------------------------------------------------------------}

    else if
        model.isInitialized
            == True
            && (model.albums |> Array.isEmpty)
            && (numberOfBlacklistedAlbums > 0)
    then
        div
            [ class "white-text status-text-container" ]
            [ Html.a
                [ onClick ResetBlacklist, class "status-text pointer" ]
                [ text (model.text.no_albums_available_but ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ model.text.are_blacklisted_clear_blocklist_question) ]
            ]
        {------------------
        REGULAR VIEW
    ------------------}

    else
        let
            currentAlbum =
                model.albums |> Array.get model.current

            currentArtist =
                currentAlbum
                |> Maybe.andThen (\crtAlbum ->
                        albumStorage
                            |> List.find (\item -> item.albums |> Array.any (\album -> album.id == crtAlbum.id))
                            |> Maybe.map (\item -> item.artist)
                )

        in
        case ( currentAlbum, currentArtist ) of
            ( Nothing, Just _ ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text model.text.no_album_data_available ] ]

            ( Just _, Nothing ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text model.text.no_artist_data_available ] ]

            ( Nothing, Nothing ) ->
                let
                    -- TODO: inconsistent behaviour, we need to reset the artist selection manually at this point even though we call Reset; The provider gets reset easily
                    resettedArtistSelection = ProviderStorage.default.id |> defaultArtist |> SingleArtistSelected
                in
                    div
                        [ class "white-text status-text-container d-flex" ]
                        [ div [ class "w-100" ] 
                        [ div [ class "status-text" ] [ text model.text.no_album_and_no_artist_data_available ]
                        , Html.a [ class "status-text w-100 pointer underlined", style "display" "block", onClick (Reset resettedArtistSelection Nothing) ] [ text model.text.ask_to_clear_all_settings ] ] 
                        ]

            ( Just album, Just artist ) ->
                let
                    largestCover =
                        album.covers |> List.maximumBy (\a -> a.width) |> Maybe.withDefault { width = 640, height = 640, url = "https://fakeimg.pl/640x640" }

                    coverMaxWidth =
                        "min(80vw, " ++ (largestCover.width |> String.fromInt) ++ "px)"

                    coverMaxHeight =
                        "min(60vh, 90vw, " ++ (largestCover.width |> String.fromInt) ++ "px)"

                    boxShadowSize =
                        "75px"

                    backgroundImageUrl =
                        largestCover.url

                    coverSourceSet =
                        backgroundImageUrl ++ " " ++ (largestCover.width |> String.fromInt) ++ "w"

                    coverAspectRatio =
                        (largestCover.width |> toFloat) / (largestCover.height |> toFloat)

                    albumNumber =
                        album.name |> tryAlbumNumberFrom |> Maybe.withDefault 0

                    coverCenterX =
                        {- this part of the code contains some hardcoded checks and references because some artist do not
                           have their cover art centered properly
                        -}
                        if (artist.shortName == "ddf") && albumNumber >= 126 then
                            (artist.altCoverCenterX |> Maybe.withDefault artist.coverCenterX |> String.fromInt) ++ "%"

                        else
                            (artist.coverCenterX |> String.fromInt) ++ "%"

                    coverCenterY =
                        (artist.coverCenterY |> String.fromInt) ++ "%"

                    informationLink =
                        Html.a
                            [ class "mr-05 p-15", href "#", onClick OpenInformationOverlay ]
                            [ img [ class "social-button", src "img/info.svg", alt "Show information dialog" ] [] ]

                    language =
                        Html.a [ class "non-styled-link p-15", style "font-size" "1.5rem", onClick ToggleLanguage, href "#" ] [ text model.text.flag ]


                    providerImage =
                        Html.a
                            [ class "ml-05 p-15 d-flex align-items-center white-text pointer", onClick OpenProviderOverlay ]
                            [ img [ class "social-button", src model.currentProvider.icon, alt ("Current provider: " ++ model.currentProvider.name) ] []
                            , div [ class "ml-025", style "font-size" "9px" ] [ text "▼" ]
                            ]

                    artistImage =
                        Html.a
                            [ class "ml-05 p-15 d-flex align-items-center white-text pointer", onClick OpenArtistOverlay ]
                            [ img [ class "social-button", src artist.icon, alt ("Current artist: " ++ artist.name) ] []
                            , div [ class "ml-025", style "font-size" "9px" ] [ text "▼" ]
                            ]

                    backgroundGlowStyle =
                        style "background" ("linear-gradient(45deg, " ++ artist.coverColorA ++ " , " ++ artist.coverColorB ++ " 100%)")

                    lastUpdated =
                        artist.lastUpdated
                in
                div
                    [ id "background-image-container"
                    , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
                    , style "background-position" (coverCenterX ++ " " ++ coverCenterY)
                    ]
                    [ artistOverlay model.isArtistOverlayOpen model.allowMultipleArtistSelection model.currentArtist model.currentProvider model.text
                    , providerOverlay model.isProviderOverlayOpen model.currentProvider ProviderStorage.all model.text
                    , informationOverlay model.isInformationOverlayOpen lastUpdated model.text
                    , div
                        [ id "background-color-overlay" ]
                        [ div
                            [ id "inner-layout-container"
                            , class "d-flex flex-column"
                            , style "height" "100svh"
                            ]
                            [ div
                                [ id "social-links-container" ]
                                [ div
                                    [ class "d-flex justify-content-center align-items-center" ]
                                    [ informationLink, language, providerImage, artistImage ]
                                ]
                            , div
                                [ style "flex-grow" "1"
                                , style "width" coverMaxWidth
                                , style "max-height" coverMaxHeight
                                ]
                                [ div
                                    [ id "cover-container", class "", style "width" coverMaxWidth, style "position" "relative", style "height" "100%" ]
                                    [ Html.a
                                        [ href album.urlToOpen ]
                                        [ img
                                            [ id "cover-img"
                                            , class "z-1 absolute-center-vertically"
                                            , attribute "srcset" coverSourceSet
                                            , style "width" coverMaxWidth
                                            ]
                                            []
                                        ]
                                    , div
                                        [ id "cover-glow"
                                        , style "max-width" coverMaxWidth
                                        , style "aspect-ratio" (coverAspectRatio |> String.fromFloat)
                                        , style "max-height" coverMaxWidth
                                        , style "box-shadow" (boxShadowSize ++ " " ++ boxShadowSize ++ " " ++ boxShadowSize)
                                        , backgroundGlowStyle
                                        ]
                                        []
                                    ]
                                , div [ id "cover-text", style "display" "none" ] [ text album.name ]
                                ]
                            , div [ style "position" "relative" ]
                                [ controlsGlowEffect artist.coverColorA artist.coverColorB
                                , navigationControls album.urlToOpen
                                , blacklistControls numberOfBlacklistedAlbums artist album.id model.text ResetBlacklist
                                ]
                            ]
                        ]
                    ]


controlsGlowEffect : String -> String -> Html Msg
controlsGlowEffect colorA colorB =
    div [ style "position" "absolute" ]
        [ div
            [ id "controls-glow-parent", class "z-1" ]
            [ div [ id "controls-glow-1", class "z-1", style "background" colorA ] []
            , div [ id "controls-glow-2", class "z-1", style "background" colorB ] []
            ]
        ]


navigationControls : String -> Html Msg
navigationControls urlToOpen =
    div
        [ id "navigation-controls"
        , class "d-flex align-items-center justify-content-center"
        , style "z-index" "2"
        ]
        [ Html.a
            [ class "z-2", href "#", onClick PreviousAlbum ]
            [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/next.svg" ] [] ]
        , Html.a
            [ id "play-button", class "z-2", href urlToOpen ]
            [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
        , Html.a
            [ class "z-2", href "#", onClick NextAlbum ]
            [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
        ]


blacklistControls : Int -> ArtistInfo -> AlbumIds.AlbumId -> TextRessources.Text -> Msg -> Html Msg
blacklistControls numberOfBlacklistedAlbums artistOfCurrentAlbum albumId text resetAction =
    div
        [ id "blocklist-controls", style "z-index" "2", style "text-decoration" "none", style "color" "white" ]
        [ div []
            [ div
                [ style "font-weight" "1000"
                , style "height" "4rem"
                , style "text-transform" "uppercase"
                , class "d-flex justify-content-center align-items-center pointer urbanist-font"
                ]
                [ Html.a
                    [ onClick (BlackListAlbum ( artistOfCurrentAlbum.id, albumId )), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                    [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt text.block_current_album ] [], div [] [ Html.text text.block ] ]
                , if numberOfBlacklistedAlbums == 0 then
                    Html.a
                        [ class "z-2 small-text non-styled-link d-flex align-items-center ml-10 disabled" ]
                        [ img
                            [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt text.clear_blocked ]
                            []
                        , div [] [ Html.text text.clear_blocked ]
                        ]

                  else
                    Html.a
                        [ onClick resetAction, class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                        [ img
                            [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt text.clear_blocked ]
                            []
                        , div [] [ Html.text (text.clear_blocked ++ " (" ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ ")") ]
                        ]
                ]
            ]
        ]


artistOverlay : Bool -> Bool -> ArtistSelection.ArtistSelection -> Providers.Provider -> TextRessources.Text -> Html Msg
artistOverlay isOverlayOpen allowMultipleArtistSelection selection provider texts =
    let
        allArtistsWithAllAlbums =
            provider.id
            |> albumStorageForProvider
            |> Maybe.withDefault []

        idsOfSelectedArtists =
            selection |> ArtistSelection.toList |> List.map (\artist -> artist.id)

        overlayItem : Bool -> ArtistInfo -> Html Msg
        overlayItem isSelected a =
            let
                isSelectedClass =
                    if isSelected then
                        " artist-list-selected-element"

                    else
                        ""

                imageSource =
                    let
                        images =
                            if a.images |> List.isEmpty then
                                [ { url = "https://placehold.co/400x400?text=" ++ a.name, width = 400, height = 400 } ]
                            else a.images

                        sizes =
                            -- the size gets smaller for bigger screens since more columns are used
                            attribute "sizes" "(max-width: 430px) 160px, (max-width: 480px) 200px, (max-width: 560px) 300px, (min-width: 561px) 200px"

                        imageSet =
                            images
                                |> List.map (\i -> i.url ++ " " ++ (i.width |> String.fromInt) ++ "w")
                                |> List.foldl
                                    (\next acc ->
                                        if acc |> String.isEmpty then
                                            next

                                        else
                                            acc ++ ", " ++ next
                                    )
                                    ""
                    in
                    [ attribute "srcset" imageSet, sizes ]


                message =
                    if allowMultipleArtistSelection then
                        OverlayArtistSelected a

                    else
                        CloseArtistOverlay (SingleArtistSelected a)

                artistName =
                    if (a.name |> String.length) > 18 then
                        (a.name |> String.slice 0 18 |> String.trim) ++ "…"

                    else
                        a.name

            in
            
            Html.a
                [ Html.Events.Extra.onClickPreventDefaultAndStopPropagation message ]
                [ div 
                  [ class "artist-item" ]
                  [ img (class isSelectedClass :: imageSource) []
                  , div [ class "artist-name", class "urbanist-font" ] [ text artistName ]
                  ]
                ]


        allowMultipleSelectionControl : Html Msg
        allowMultipleSelectionControl =
            let
                multiSelectText =
                    if allowMultipleArtistSelection then
                        "☑ " ++ texts.allow_multiple_selection

                    else
                        "☐ " ++ texts.allow_multiple_selection
            in
            div
            [ style "display" "flex", style "flex-grow" "1", style "justify-content" "center"]
            [ Html.a
                [ class "urbanist-font uppercase bold overlay-button background-primary cursor-pointer"
                , style "margin-left" "1.4rem"
                , Html.Events.Extra.onClickPreventDefaultAndStopPropagation ToggleAllowMultipleSelection
                ]
                [ text multiSelectText ]
            ]

        closeButton : Html Msg
        closeButton =
            Html.a
                [ Html.Events.Extra.onClickPreventDefaultAndStopPropagation (CloseArtistOverlay selection), style "margin-top" "5px" ]
                [ img [ src "img/close_button.svg", alt "Close artist selection", id "close-artist-overlay" ] [] ]

        header = 
            div [ class "sticky-header" ] 
                    [ allowMultipleSelectionControl
                    , closeButton
                    ]

        content =
            (allArtistsWithAllAlbums |> List.map (\a -> 
            let
                isSelected = idsOfSelectedArtists |> List.any (\aId -> aId == a.artist.id)

            in
            overlayItem isSelected a.artist))

        unfinishedProviderIntegrationHint =
            if provider.id |> String.endsWith "_dmd" then
                div [ class "overlay-hint" ] [ text texts.information_unfinished_provider_integration ]
            else
                div [] []

    in
    if isOverlayOpen then
        div [ class "overlay", onClick (CloseArtistOverlay selection) ]
        [ div [ class "overlay-content" ] 
          [ header
          , unfinishedProviderIntegrationHint
          , div [ class "artists-grid" ] content
          ]
        ]
    else
        div [] []
    

providerOverlay : Bool -> Providers.Provider -> (List Providers.Provider) -> TextRessources.Text -> Html Msg
providerOverlay isOverlayOpen currentProvider providers texts =
    let
        overlayItem : Bool -> Providers.Provider -> Html Msg
        overlayItem isSelected provider =
            let
                isSelectedClass =
                    if isSelected then
                        " artist-list-selected-element"

                    else
                        ""

                imageSource =
                    let
                        image =
                            if provider.logo |> String.isEmpty then
                                { url = "https://placehold.co/500x500?text=" ++ provider.name, width = 500, height = 500 }
                            else { url = provider.logo, width = 500, height = 500 }

                        sizes =
                            -- the size gets smaller for bigger screens since more columns are used
                            -- we use the same sizes as in the artist overlay to give it a consistent look and feel
                            attribute "sizes" "(max-width: 430px) 160px, (max-width: 480px) 200px, (max-width: 560px) 300px, (min-width: 561px) 200px"

                        imageSet =
                            image.url ++ " " ++ (image.width |> String.fromInt) ++ "w"

                    in
                    [ attribute "srcset" imageSet, sizes ]


                message =
                    CloseProviderOverlay (Just provider)

                providerName =
                    if (provider.name |> String.length) > 18 then
                        (provider.name |> String.slice 0 18 |> String.trim) ++ "…"

                    else
                        provider.name

            in
            
            Html.a
                [ Html.Events.Extra.onClickPreventDefaultAndStopPropagation message ]
                [ div 
                  [ class "artist-item" ]
                  [ img (class isSelectedClass :: imageSource) []
                  , div [ class "artist-name", class "urbanist-font" ] [ text providerName ]
                  ]
                ]


        closeButton : Html Msg
        closeButton =
            Html.a
                [ Html.Events.Extra.onClickPreventDefaultAndStopPropagation (CloseProviderOverlay Nothing) ]
                [ img [ src "img/close_button.svg", alt "Close provider selection", id "close-artist-overlay" ] [] ]

        header = 
            div
            [ class "sticky-header" ]
            [ div [ class "sticky-header-text" ] [ text texts.select_provider ]
            , closeButton ]

    in
    if isOverlayOpen then
        div [ class "overlay", onClick (CloseProviderOverlay Nothing) ]
        [ div [ class "overlay-content" ] 
          [ header
          , div [ class "artists-grid" ]
              (providers |> List.map (\p -> 
              let
                isSelected = p.id == currentProvider.id
              in
              overlayItem isSelected p))
          ]
        ]
    else
        div [] []
    

informationOverlay : Bool -> String -> TextRessources.Text -> Html Msg
informationOverlay isOverlayOpen lastUpdated texts =
    let
        header = 
            div
            [ class "sticky-header", style "max-width" "600px" ]
            [ div [ class "sticky-header-text" ] [ text texts.information_overlay_title ]
            , Html.a
                [ Html.Events.Extra.onClickPreventDefaultAndStopPropagation CloseInformationOverlay ]
                [ Html.img [ id "close-artist-overlay", src "img/close_button.svg" ] [] ] ]

        informationText =
            Html.p [ class "overlay-body-text"] [ text texts.information_overlay_text ]

        providerSelectionText =
            Html.p [ class "overlay-body-text"] [ text texts.information_overlay_provider_text ]

        artistSelectionText =
            Html.p [ class "overlay-body-text"] [ text texts.information_overlay_artist_text ]

        dreiMetadatenText =
            Html.p [ class "overlay-body-text italic"]
            [ text texts.drei_metadaten_thanks_1
            , Html.a [ href texts.drei_metadaten_link, id "dmd-link", class "foreground-primary" ] [ text texts.drei_metadaten_link ]
            , text texts.drei_metadaten_thanks_2
            ]
        
        copyrightText =
            Html.p [ class "overlay-body-text italic"] [ text texts.information_overlay_copyright_text ]

        lastUpdatedText =
            Html.p [ class "overlay-body-text white-text italic"] [ text (texts.last_updated ++ lastUpdated) ]

        githubLink =
            Html.a
                [ class "mr-05 p-15", href "https://github.com/AlbumShuffler/Frontend" ]
                [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]

        redditLink =
            Html.a
                [ class "mr-05 p-15", href "https://www.reddit.com/r/AlbumShuffler" ]
                [ img [ class "social-button", src "img/reddit.svg", alt "Link to Reddit" ] [] ]
    in
    if isOverlayOpen then
        div [ class "overlay", onClick CloseInformationOverlay ]
        [ div [ class "overlay-content", style "overflow-y" "scroll" ] 
          [ header
          , informationText
          , Html.h4 [ class "artist-name urbanist-font", style "margin" "10px"] [ text texts.information_overlay_provider_title ]
          , providerSelectionText
          , Html.h4 [ class "artist-name urbanist-font", style "margin" "10px"] [ text texts.information_overlay_artist_title ]
          , artistSelectionText
          , Html.hr [ style "width" "100%", style "max-width" "calc(min(600px, 90vw))"] []
          , dreiMetadatenText
          , copyrightText
          , lastUpdatedText
          , div [ class "d-flex justify-content-center align-items-center" ]
            [ githubLink
            , redditLink
            ]
          ]
        ]
    else
        div [] []
