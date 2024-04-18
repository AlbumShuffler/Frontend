port module Main exposing (..)

import Albums exposing (Album, ArtistInfo)
import Array exposing (Array)
import ArtistsWithAlbums exposing (albumStorage)
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


type alias Model =
    { blacklistedAlbums : List String
    , albums : Array Album
    , current : Int
    , isInitialized : Bool
    , currentArtist : Maybe ArtistInfo
    , isArtistOverlayOpen : Bool
    }


type alias AlbumArt =
    { url : String
    , height : Int
    , width : Int
    }


port blacklistReceiver : (List String -> msg) -> Sub msg


port fetchBlacklisted : () -> Cmd msg


port setBlacklistedAlbums : List String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions _ =
    blacklistReceiver GotBlacklist


emptyModel : String -> Model
emptyModel artistShortName =
    let
        artistWithAlbums =
            ArtistsWithAlbums.albumStorage
                |> List.find (\a -> (a.artist.httpFriendlyShortName |> String.toLower) == (artistShortName |> String.toLower))

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
    in
    { blacklistedAlbums = []
    , albums = filteredAlbums
    , current = 0
    , isInitialized = False
    , currentArtist = artistWithAlbums |> Maybe.map (\a -> a.artist)
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
    | BlackListAlbum String
    | OpenArtistOverlay ArtistInfo
    | CloseArtistOverlay ArtistInfo


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( emptyModel defaultArtistShortName, fetchBlacklisted () )


startShuffleAlbums : Array Album -> Cmd Msg
startShuffleAlbums albums =
    let
        generator =
            Random.List.shuffle (albums |> Array.toList)
    in
    generator |> Random.generate AlbumsShuffled


resetModel : Maybe ArtistInfo -> ( Model, Cmd Msg )
resetModel artist =
    let
        resettedModel =
            artist
                |> Maybe.map (\a -> a.httpFriendlyShortName)
                |> Maybe.withDefault defaultArtistShortName
                |> emptyModel
    in
    ( resettedModel, Cmd.batch [ setBlacklistedAlbums [], resettedModel.albums |> startShuffleAlbums ] )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Reset artist ->
            artist |> resetModel

        GotBlacklist text ->
            let
                _ =
                    Debug.log "GotBlacklist" text

                albumsToBlacklist =
                    text

                filteredAlbums =
                    model.albums |> Array.filter (\a -> not (albumsToBlacklist |> List.member a.id))
            in
            ( { model | blacklistedAlbums = albumsToBlacklist, albums = filteredAlbums }, filteredAlbums |> startShuffleAlbums )

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

        BlackListAlbum albumId ->
            {- Blacklisting an album removes it from the current album array.
               Since the array is traversed by a counter nothing needs to change as the counter will now
               point to the next album.
            -}
            let
                updatedModel =
                    { model
                        | albums = model.albums |> Array.filter (\a -> a.id /= albumId)
                        , blacklistedAlbums = albumId :: model.blacklistedAlbums
                    }

                newCmd =
                    setBlacklistedAlbums (albumId :: model.blacklistedAlbums)
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
                Just newArtist |> resetModel


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
    if model.isInitialized == False then
        div
            [ class "white-text status-text-container" ]
            [ div [ class "status-text" ] [ text "Loading ..." ] ]

    else if model.isInitialized == True && (model.albums |> Array.isEmpty) && (model.blacklistedAlbums |> (not << List.isEmpty)) then
        div
            [ class "white-text status-text-container" ]
            [ a [ onClick (Reset model.currentArtist), class "status-text pointer" ] [ text ("No albums available but " ++ (model.blacklistedAlbums |> List.length |> String.fromInt) ++ " are blacklisteed. Clear blacklist?") ] ]

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
                        Html.a [ class "mr-05 p-15", href "https://github.com/b0wter/shuffler" ] [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]

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
                            isSelectedClass = if isSelected then " artist-list-selected-element" else ""
                            _ = Debug.log a.name isSelectedClass
                            _ = Debug.log ("comparing " ++ artist.id) a.id
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
                            (artists |> List.map (\a -> 
                                let
                                    isCurrentArtist = artist == a
                                in
                                overlayItem isCurrentArtist a))

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
                                            [ onClick (BlackListAlbum album.id), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                                            [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt "block current album" ] [], div [] [ text "block" ] ]
                                        , if model.blacklistedAlbums |> List.isEmpty then
                                            a
                                                [ class "z-2 small-text non-styled-link d-flex align-items-center ml-10 disabled" ]
                                                [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist" ] [], div [] [ text "clear blocked" ] ]

                                          else
                                            a
                                                [ onClick (Reset model.currentArtist), class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                                                [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist" ] [], div [] [ text ("clear blocked (" ++ (model.blacklistedAlbums |> List.length |> String.fromInt) ++ ")") ] ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
