port module Main exposing (..)

import AlbumIds
import Albums exposing (Album, ArtistInfo)
import Array exposing (Array)
import ArtistIds
import ArtistsWithAlbums exposing (albumStorage)
import AssocList as Dict exposing (Dict)
import Browser
import Debug
import Html exposing (Html, a, div, img, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List.Extra as List
import Platform.Cmd as Cmd
import Random
import Random.List
import Regex


defaultArtistShortName : String
defaultArtistShortName =
    "ddf"


type alias Flags =
    {}


type alias Blacklist =
    Dict ArtistIds.ArtistId (List AlbumIds.AlbumId)


type alias Model =
    { blacklistedAlbums : Blacklist
    , albums : Array Album
    , current : Int
    , isInitialized : Bool
    , currentArtist : Maybe ArtistInfo
    , isArtistOverlayOpen : Bool
    }


port blacklistReceiver : (List String -> msg) -> Sub msg


port fetchBlacklisted : () -> Cmd msg


port setBlacklistedAlbums : List String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions _ =
    blacklistReceiver GotBlacklist


emptyModel : String -> Maybe Blacklist -> Model
emptyModel artistShortName blacklistOption =
    let
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
    | NextAlbum
    | PreviousAlbum
    | AlbumsShuffled (List Album)
    | BlackListAlbum ( ArtistIds.ArtistId, AlbumIds.AlbumId )
    | OpenArtistOverlay ArtistInfo
    | CloseArtistOverlay ArtistInfo


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( emptyModel defaultArtistShortName Nothing, fetchBlacklisted () )


startShuffleAlbums : Array Album -> Cmd Msg
startShuffleAlbums albums =
    let
        generator =
            Random.List.shuffle (albums |> Array.toList)
    in
    generator |> Random.generate AlbumsShuffled


resetModel : Maybe ArtistInfo -> Maybe Blacklist -> ( Model, Cmd Msg )
resetModel artist blacklist =
    let
        artistShortname =
            artist
                |> Maybe.map (\a -> a.httpFriendlyShortName)
                |> Maybe.withDefault defaultArtistShortName

        resettedModel =
            emptyModel artistShortname blacklist

        serializedBlacklist =
            blacklist |> Maybe.map blackListToStringList |> Maybe.withDefault []
    in
    ( resettedModel, Cmd.batch [ serializedBlacklist |> setBlacklistedAlbums, resettedModel.albums |> startShuffleAlbums ] )


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
            resetModel artist (model.blacklistedAlbums |> removeFromBlacklist artistId |> Just)

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
                _ =
                    Debug.log "blacklist" model.blacklistedAlbums

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

        OpenArtistOverlay currentArtist ->
            ( { model | isArtistOverlayOpen = True }, Cmd.none )

        CloseArtistOverlay newArtist ->
            if Just newArtist == model.currentArtist then
                ( { model | isArtistOverlayOpen = False }, Cmd.none )

            else
                resetModel (Just newArtist) (Just model.blacklistedAlbums)


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
    if model.isInitialized == False then
        div
            [ class "white-text status-text-container" ]
            [ div [ class "status-text" ] [ text "Loading ..." ] ]

    else if
        model.isInitialized
            == True
            && (model.albums |> Array.isEmpty)
            && (numberOfBlacklistedAlbums > 0)
    then
        div
            [ class "white-text status-text-container" ]
            [ a [ onClick (Reset model.currentArtist), class "status-text pointer" ] [ text ("No albums available but " ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ " are blacklisteed. Clear blacklist?") ] ]

    else
        case ( model.albums |> Array.get model.current, model.currentArtist ) of
            ( Nothing, Just _ ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text "No album data available :(" ] ]

            ( Just _, Nothing ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text "No artist data available :(" ] ]

            ( Nothing, Nothing ) ->
                div
                    [ class "white-text status-text-container" ]
                    [ div [ class "status-text" ] [ text "Neither artist nor album data available :(" ] ]

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
                        if albumNumber >= 126 then
                            (60 |> String.fromInt) ++ "%"

                        else
                            (50 |> String.fromInt) ++ "%"

                    coverCenterY =
                        (50 |> String.fromInt) ++ "%"

                    githubLink =
                        Html.a [ class "mr-05 p-15", href "https://github.com/b0wter/shuffler-frontend" ] [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]

                    artistImage =
                        a
                            [ class "ml-05 p-15 d-flex align-items-center white-text pointer", onClick (OpenArtistOverlay artist) ]
                            [ img [ class "social-button", src artist.icon, alt ("Current artist: " ++ artist.name) ] []
                            , div [ class "ml-025", style "font-size" "9px" ] [ text "▼" ]
                            ]

                    backgroundFadeDuration =
                        "0"

                    {- "5000ms" -}
                    backgroundFadeEase =
                        "3000ms"

                    backgroundGlowStyle =
                        style "background" ("linear-gradient(45deg, " ++ artist.coverColorA ++ " , " ++ artist.coverColorB ++ " 100%)")

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

                    overlay =
                        let
                            display =
                                if model.isArtistOverlayOpen then
                                    style "display" "flex"

                                else
                                    style "display" "none"
                        in
                        div
                            [ id "artist-selection-overview", class "white-text urbanist-font", display ]
                            [ overlayGrid (ArtistsWithAlbums.albumStorage |> List.map (\a -> a.artist))
                            ]
                in
                div
                    [ id "background-image-container"
                    , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
                    , style "background-position" (coverCenterX ++ " " ++ coverCenterY)
                    ]
                    [ overlay
                    , div
                        [ id "background-color-overlay"
                        , style "-webkit-transition" ("background " ++ backgroundFadeDuration ++ " linear")
                        , style "-moz-transition" ("background " ++ backgroundFadeDuration ++ " linear")
                        , style "-o-transition" ("background " ++ backgroundFadeDuration ++ " linear")
                        , style "transition" ("background " ++ backgroundFadeDuration ++ " linear")
                        ]
                        [ div
                            [ id "inner-layout-container"
                            , class "d-flex flex-column"
                            , style "height" "100svh"
                            ]
                            [ div
                                [ id "social-links-container" ]
                                [ div
                                    [ class "d-flex justify-content-center align-items-center" ]
                                    [ githubLink, artistImage ]

                                {- xLink ] -}
                                ]
                            , div
                                [ style "flex-grow" "1"
                                , style "width" coverMaxWidth
                                , style "max-height" coverMaxHeight
                                ]
                                [ div
                                    [ id "cover-container", class "", style "width" coverMaxWidth, style "position" "relative", style "height" "100%" ]
                                    [ a
                                        [ href album.urlToOpen ]
                                        [ img
                                            [ id "cover-img"
                                            , attribute "srcset" coverSourceSet
                                            , style "position" "absolute"
                                            , style "top" "0"
                                            , style "bottom" "0"
                                            , style "width" coverMaxWidth
                                            , style "z-index" "1"
                                            ]
                                            []
                                        ]
                                    , div
                                        [ id "cover-glow"
                                        , style "max-width" coverMaxWidth
                                        , style "aspect-ratio" (coverAspectRatio |> String.fromFloat)
                                        , style "max-height" coverMaxWidth
                                        , style "box-shadow" (boxShadowSize ++ " " ++ boxShadowSize ++ " " ++ boxShadowSize)
                                        , style "border-radius" "20.02px"
                                        , style "filter" "blur(7.5vw)"
                                        , backgroundGlowStyle
                                        ]
                                        []
                                    ]
                                , div [ id "cover-text", style "display" "none" ] [ text album.name ]
                                ]
                            , div
                                [ class "d-flex align-items-center justify-content-center"
                                , style "z-index" "1"
                                ]
                                [ a [ href "#", onClick PreviousAlbum ] [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/next.svg" ] [] ]
                                , a [ href album.urlToOpen ] [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
                                , a [ href "#", onClick NextAlbum ] [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
                                ]
                            , div
                                [ style "text-decoration" "none", style "color" "white" ]
                                [ div []
                                    [ div
                                        [ style "font-weight" "1000", style "height" "4rem", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center pointer urbanist-font" ]
                                        [ a
                                            [ onClick (BlackListAlbum ( artist.id, album.id )), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                                            [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt "block current album" ] [], div [] [ text "block" ] ]
                                        , if numberOfBlacklistedAlbums == 0 then
                                            a
                                                [ class "z-2 small-text non-styled-link d-flex align-items-center ml-10 disabled" ]
                                                [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist" ] [], div [] [ text "clear blocked" ] ]

                                          else
                                            a
                                                [ onClick (Reset model.currentArtist), class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                                                [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist" ] [], div [] [ text ("clear blocked (" ++ (numberOfBlacklistedAlbums |> String.fromInt) ++ ")") ] ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
