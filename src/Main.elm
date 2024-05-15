port module Main exposing (..)

import AlbumIds
import Albums exposing (Album, ArtistInfo)
import Array exposing (Array)
import ArtistIds
import ArtistsWithAlbums exposing (albumStorage)
import AssocList as Dict exposing (Dict)
import Browser
import Debug
import Html exposing (Html, div, img, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List.Extra as List
import Platform.Cmd as Cmd
import Random
import Random.List
import Regex
import TextRessources


defaultArtistShortName : String
defaultArtistShortName =
    albumStorage
        |> List.head
        |> Maybe.map (\a -> a.artist.httpFriendlyShortName)
        |> Maybe.withDefault "<could not set defaultArtistShortName, is data available?>"


defaultText : TextRessources.Text
defaultText =
    TextRessources.englishText


type alias Flags =
    { blockedAlbums : List String
    , language : String
    , lastSelectedArtist : String
    }


type alias Blacklist =
    Dict ArtistIds.ArtistId (List AlbumIds.AlbumId)


type alias Model =
    { blacklistedAlbums : Blacklist
    , albums : Array Album
    , current : Int
    , isInitialized : Bool
    , currentArtist : Maybe ArtistInfo
    , isArtistOverlayOpen : Bool
    , text : TextRessources.Text
    }


port setBlacklistedAlbums : List String -> Cmd msg


port setLastSelectedArtist : String -> Cmd msg


port setLastSelectedLanguage : String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


emptyModel : String -> Maybe Blacklist -> Maybe TextRessources.Text -> Model
emptyModel artistShortName blacklistOption language =
    let
        text =
            language |> Maybe.withDefault defaultText

        artistWithAlbums =
            ArtistsWithAlbums.albumStorage
                |> List.find (\a -> (a.artist.httpFriendlyShortName |> String.toLower) == (artistShortName |> String.toLower))

        artist =
            artistWithAlbums |> Maybe.map (\a -> a.artist)

        albums =
            artistWithAlbums
                |> Maybe.map (\a -> a.albums)
                |> Maybe.withDefault Array.empty

        filteredAlbumNames =
            [ "Outro"
            , "liest..."
            , "liest ..."
            , "Originalmusik"
            ]

        filteredAlbums =
            albums
                |> Array.filter (\a -> not <| (filteredAlbumNames |> List.any (\name -> a.name |> String.contains name)))

        blacklist =
            blacklistOption |> Maybe.withDefault Dict.empty

        blacklistedForCurrentArtist =
            let
                artistId =
                    artist |> Maybe.map (\a -> a.id) |> Maybe.withDefault ArtistIds.empty
            in
            blacklist |> Dict.get artistId |> Maybe.withDefault []

        filteredNonblacklistedAlbums =
            filteredAlbums
                |> Array.filter (\album -> not <| (blacklistedForCurrentArtist |> List.member album.id))
    in
    { blacklistedAlbums = blacklist
    , albums = filteredNonblacklistedAlbums
    , current = 0
    , isInitialized = False
    , currentArtist = artist
    , isArtistOverlayOpen = False
    , text = text
    }


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , subscriptions = subscriptions
        , view = view
        , update = update
        }


type Msg
    = Reset (Maybe ArtistInfo)
    | GotBlacklist (List String)
    | GotBrowserLanguage String
    | NextAlbum
    | PreviousAlbum
    | AlbumsShuffled (List Album)
    | BlackListAlbum ( ArtistIds.ArtistId, AlbumIds.AlbumId )
    | OpenArtistOverlay
    | CloseArtistOverlay ArtistInfo
    | ToggleLanguage


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        artistShortName =
            if flags.lastSelectedArtist == "" then
                defaultArtistShortName

            else
                flags.lastSelectedArtist

        text =
            TextRessources.all |> Array.toList |> List.find (\t -> t.key == flags.language)

        blacklist =
            flags.blockedAlbums |> blackListFromStringList

        model =
            emptyModel artistShortName (Just blacklist) text
    in
    ( model, model.albums |> startShuffleAlbums )


startShuffleAlbums : Array Album -> Cmd Msg
startShuffleAlbums albums =
    let
        generator =
            Random.List.shuffle (albums |> Array.toList)
    in
    generator |> Random.generate AlbumsShuffled


resetModel : Maybe ArtistInfo -> Maybe Blacklist -> TextRessources.Text -> ( Model, Cmd Msg )
resetModel artist blacklist text =
    let
        artistShortname =
            artist
                |> Maybe.map (\a -> a.httpFriendlyShortName)
                |> Maybe.withDefault defaultArtistShortName

        resettedModel =
            emptyModel artistShortname blacklist (Just text)

        serializedBlacklist =
            blacklist |> Maybe.map blackListToStringList |> Maybe.withDefault []

        commands =
            [ serializedBlacklist |> setBlacklistedAlbums
            , resettedModel.albums |> startShuffleAlbums
            , artistShortname |> setLastSelectedArtist
            ]
    in
    ( resettedModel, Cmd.batch commands )


addToBlacklist : ArtistIds.ArtistId -> AlbumIds.AlbumId -> Blacklist -> Blacklist
addToBlacklist artistId albumId dict =
    case dict |> Dict.get artistId of
        Just existing ->
            dict |> Dict.remove artistId |> Dict.insert artistId (albumId :: existing)

        Nothing ->
            dict |> Dict.insert artistId [ albumId ]


removeFromBlacklist : ArtistIds.ArtistId -> Blacklist -> Blacklist
removeFromBlacklist artistId blacklist =
    blacklist |> Dict.remove artistId


blackListToStringList : Blacklist -> List String
blackListToStringList blacklist =
    let
        pairs =
            blacklist |> Dict.toList
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
    grouped |> Dict.fromList


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Reset artist ->
            let
                artistId =
                    artist |> Maybe.map (\a -> a.id) |> Maybe.withDefault ArtistIds.empty
            in
            resetModel artist (model.blacklistedAlbums |> removeFromBlacklist artistId |> Just) model.text

        GotBlacklist strings ->
            let
                blacklist =
                    strings |> blackListFromStringList

                artistId =
                    model.currentArtist |> Maybe.map (\a -> a.id) |> Maybe.withDefault ArtistIds.empty

                blacklistedForCurrentArtist =
                    blacklist |> Dict.get artistId |> Maybe.withDefault []

                filteredAlbums =
                    model.albums |> Array.filter (\a -> not (blacklistedForCurrentArtist |> List.member a.id))
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
                updatedModel =
                    { model
                        | albums = model.albums |> Array.filter (\a -> a.id /= albumId)
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
            ( { model | isArtistOverlayOpen = True }, Cmd.none )

        CloseArtistOverlay newArtist ->
            if Just newArtist == model.currentArtist then
                ( { model | isArtistOverlayOpen = False }, Cmd.none )

            else
                resetModel (Just newArtist) (Just model.blacklistedAlbums) model.text

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
        artistId =
            model.currentArtist |> Maybe.map (\a -> a.id) |> Maybe.withDefault ArtistIds.empty

        numberOfBlacklistedAlbums =
            model.blacklistedAlbums
                |> Dict.get artistId
                |> Maybe.withDefault []
                |> List.length
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
            [ Html.a [ onClick (Reset model.currentArtist), class "status-text pointer" ] [ text (model.text.no_albums_available_but ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ model.text.are_blacklisted_clear_blocklist_question) ] ]
        {------------------
        REGULAR VIEW
    ------------------}

    else
        case ( model.albums |> Array.get model.current, model.currentArtist ) of
            ( Nothing, Just _ ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text model.text.no_album_data_available ] ]

            ( Just _, Nothing ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text model.text.no_artist_data_available ] ]

            ( Nothing, Nothing ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text model.text.no_album_and_no_artist_data_available ] ]

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
                        if (artist.httpFriendlyShortName == "ddf") && albumNumber >= 126 then
                            (artist.altCoverCenterX |> Maybe.withDefault artist.coverCenterX |> String.fromInt) ++ "%"

                        else
                            (artist.coverCenterX |> String.fromInt) ++ "%"

                    coverCenterY =
                        (artist.coverCenterY |> String.fromInt) ++ "%"

                    githubLink =
                        Html.a [ class "mr-05 p-15", href "https://github.com/b0wter/shuffler-frontend" ] [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]

                    language =
                        Html.a [ class "non-styled-link p-15", style "font-size" "1.5rem", onClick ToggleLanguage, href "#" ] [ text model.text.flag ]

                    artistImage =
                        Html.a
                            [ class "ml-05 p-15 d-flex align-items-center white-text pointer", onClick OpenArtistOverlay ]
                            [ img [ class "social-button", src artist.icon, alt ("Current artist: " ++ artist.name) ] []
                            , div [ class "ml-025", style "font-size" "9px" ] [ text "▼" ]
                            ]

                    backgroundFadeDuration =
                        "0"

                    backgroundGlowStyle =
                        style "background" ("linear-gradient(45deg, " ++ artist.coverColorA ++ " , " ++ artist.coverColorB ++ " 100%)")
                in
                div
                    [ id "background-image-container"
                    , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
                    , style "background-position" (coverCenterX ++ " " ++ coverCenterY)
                    ]
                    [ artist |> artistOverlay model.isArtistOverlayOpen
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
                                    [ githubLink, language, artistImage ]
                                ]
                            , div
                                [ style "flex-grow" "1"
                                , style "width" coverMaxWidth
                                , style "max-height" coverMaxHeight
                                ]
                                [ div
                                    [ id "cover-container", class "", style "width" coverMaxWidth, style "position" "relative", style "height" "100%" ]
                                    [ div [ class "flip-card" ]
                                        [ div [ class "flip-card-inner" ]
                                            [ div [ class "flip-card-front" ]
                                                [ Html.a
                                                    [ href album.urlToOpen ]
                                                    [ img
                                                        [ id "cover-img"
                                                        , class "z-1 --absolute-center-vertically"
                                                        , attribute "srcset" coverSourceSet
                                                        , style "width" coverMaxWidth
                                                        ]
                                                        []
                                                    ]
                                                ]
                                            , div [ class "flip-card-back" ]
                                                [ text "Justus Jonas ist verschwunden! Während Peter und Bob den Ersten Detektiv verzweifelt suchen, stolpern sie über Spuren aus ihrer eigenen Vergangenheit: Der \"Fluch des Rubins\" – hat Justus‘ Verschwinden etwas mit diesem längst zu den Akten gelegten Fall zu tun? Ist das Rätsel um den mysteriösen Edelstein damals wirklich gelöst worden? Bei ihrer Suche ahnen sie nicht, dass sie damit dunkle Mächte heraufbeschwören. Denn das Feurige Auge birgt mehr Geheimnisse, als die drei ??? ahnen können ..."
                                                ]
                                            ]
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
                                , blacklistControls numberOfBlacklistedAlbums artist album.id model.text
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
        [ Html.a [ class "z-2", href "#", onClick PreviousAlbum ] [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/next.svg" ] [] ]
        , Html.a [ class "z-2", href urlToOpen ] [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
        , Html.a [ class "z-2", href "#", onClick NextAlbum ] [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
        ]


blacklistControls : Int -> ArtistInfo -> AlbumIds.AlbumId -> TextRessources.Text -> Html Msg
blacklistControls numberOfBlacklistedAlbums artist albumId text =
    div
        [ id "blocklist-controls", style "z-index" "2", style "text-decoration" "none", style "color" "white" ]
        [ div []
            [ div
                [ style "font-weight" "1000", style "height" "4rem", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center pointer urbanist-font" ]
                [ Html.a
                    [ onClick (BlackListAlbum ( artist.id, albumId )), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                    [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt text.block_current_album ] [], div [] [ Html.text text.block ] ]
                , if numberOfBlacklistedAlbums == 0 then
                    Html.a
                        [ class "z-2 small-text non-styled-link d-flex align-items-center ml-10 disabled" ]
                        [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt text.clear_blocked ] [], div [] [ Html.text text.clear_blocked ] ]

                  else
                    Html.a
                        [ onClick (Reset (Just artist)), class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                        [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt text.clear_blocked ] [], div [] [ Html.text (text.clear_blocked ++ " (" ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ ")") ] ]
                ]
            ]
        ]


artistOverlay : Bool -> ArtistInfo -> Html Msg
artistOverlay isOverlayOpen artist =
    let
        overlayItem : Bool -> ArtistInfo -> Html Msg
        overlayItem isSelected a =
            let
                isSelectedClass =
                    if isSelected then
                        " artist-list-selected-element"

                    else
                        ""
            in
            Html.a
                [ onClick (CloseArtistOverlay a) ]
                [ img [ class ("mb-025 artist-list" ++ isSelectedClass), src a.imageUrl ] []
                , div [ class "mb-10 artist-list-caption" ] [ text a.name ]
                ]

        overlayGrid : List ArtistInfo -> Html Msg
        overlayGrid artists =
            div
                [ class "artist-list m-20" ]
                (artists
                    |> List.map
                        (\a ->
                            let
                                isCurrentArtist =
                                    artist == a
                            in
                            overlayItem isCurrentArtist a
                        )
                )

        display =
            if isOverlayOpen then
                style "display" "flex"

            else
                style "display" "none"
    in
    div
        [ id "artist-selection-overview", class "white-text urbanist-font", display ]
        [ overlayGrid (ArtistsWithAlbums.albumStorage |> List.map (\a -> a.artist))
        ]
