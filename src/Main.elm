port module Main exposing (..)

import Browser
import Debug
import Html exposing (Html, a, div, img, text)
import Html.Attributes exposing (..)
import Regex
import Random
import Random.Extra
import Html.Events exposing (onClick)
import Random.List
import Array exposing(Array)


type alias Flags =
    {}


type alias Model =
    { blacklistedAlbums : List String
    , albums: Array Album
    , current: Int
    }


type alias Album =
    { id : String
    , name : String
    , coverUrl : String
    , coverWidth : Int
    , coverHeight : Int
    , urlToOpen : String
    }


exampleAlbum1 : Album
exampleAlbum1 =
    { id = "abcdefghij"
    , name = "132/Haus des Schreckens"
    , coverUrl = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703"
    , coverWidth = 640
    , coverHeight = 640
    , urlToOpen = "https://example.com"
    }


exampleAlbum2 : Album
exampleAlbum2 =
    { id = "klmnopqrstu"
    , name = "088/Vampir im Internet"
    , coverUrl = "https://cdn.smehost.net/hcmssmeappscom-delabelsprod/produkte/hoerspiele/ddf_cd_088.jpg"
    , coverWidth = 1429
    , coverHeight = 1417
    , urlToOpen = "https://example.com"
    }


exampleAlbum3 : Album
exampleAlbum3 =
    { id = "vwxyz123456"
    , name = "099/Rufmord"
    , coverUrl = "https://cdn.smehost.net/hcmssmeappscom-delabelsprod/produkte/hoerspiele/ddf_cd_099.jpg"
    , coverWidth = 1429
    , coverHeight = 1417
    , urlToOpen = "https://example.com"
    }


albumStorage : Array Album
albumStorage =
    [ exampleAlbum1, exampleAlbum2, exampleAlbum3 ] |> Array.fromList


type alias AlbumArt =
    { url : String
    , height : Int
    , width : Int
    }


port cookieReceiver : (String -> msg) -> Sub msg


port fetchCookies : () -> Cmd msg


port setCookie : String -> Cmd msg


port changeAlbum : String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    cookieReceiver GotCookie


emptyModel : Model
emptyModel =
    { blacklistedAlbums = []
    , albums = albumStorage
    , current = 0
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
    = Reset
    | GotCookie String
    | NextAlbum
    | PreviousAlbum
    | AlbumsShuffled (List Album)


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( emptyModel, Cmd.batch [ fetchCookies (), albumStorage |> startShuffleAlbums ] )


deconstructCookie : String -> List String
deconstructCookie content =
    []


constructCookie : List String -> String
constructCookie albums =
    ""


modelToCookie : Model -> String
modelToCookie model =
    constructCookie model.blacklistedAlbums


updateModelFromCookie : String -> Model -> Model
updateModelFromCookie content model =
    let
        albumsToBlacklist =
            deconstructCookie content
    in
    { model | blacklistedAlbums = albumsToBlacklist }


startShuffleAlbums : Array Album -> Cmd Msg
startShuffleAlbums albums =
    let
        generator = Random.List.shuffle (albums |> Array.toList)
    in
        generator |> Random.generate AlbumsShuffled 


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Reset ->
            ( emptyModel, setCookie (emptyModel |> modelToCookie) )

        GotCookie text ->
            let
                albumsToBlacklist =
                    text |> deconstructCookie
            in
            ( { model | blacklistedAlbums = albumsToBlacklist }, Cmd.none )

        NextAlbum ->
            let
                newModel = { model | current = modBy (model.albums |> Array.length) (model.current + 1) }
            in
            ( newModel, Cmd.none )

        PreviousAlbum ->
            ( model, Cmd.none )

        AlbumsShuffled albums ->
            ({ model | albums = albums |> Array.fromList }, Cmd.none)


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
    case model.albums |> Array.get model.current of
        Nothing ->
            div [] [ text "no album :(" ]

        Just album ->
            let
                coverMaxWidth =
                    "min(80vw, " ++ (album.coverWidth |> String.fromInt) ++ "px)"

                coverMaxHeight =
                    "min(60vh, 90vw, " ++ (album.coverWidth |> String.fromInt) ++ "px)"

                boxShadowSize =
                    "75px"

                backgroundImageUrl =
                    album.coverUrl

                coverSourceSet =
                    backgroundImageUrl ++ " " ++ (album.coverWidth |> String.fromInt) ++ "w"

                coverAspectRatio =
                    (album.coverWidth |> toFloat) / (album.coverHeight |> toFloat)

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

                xLink =
                    Html.a [ class "ml-05 p-15", href "https://x.com/b0wter" ] [ img [ class "social-button", src "img/x.svg", alt "Link to X" ] [] ]

                backgroundFadeDuration = "5000ms"
                backgroundFadeEase = "3000ms"
            in
            div
                [ id "background-image-container"
                , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
                , style "background-position" (coverCenterX ++ " " ++ coverCenterY)
                ]
                [ div
                    [ id "background-color-overlay"
                    , style "-webkit-transition"    ("background " ++ backgroundFadeDuration ++ " linear")
                    , style "-moz-transition"       ("background " ++ backgroundFadeDuration ++ " linear")
                    , style "-o-transition"         ("background " ++ backgroundFadeDuration ++ " linear")
                    , style "transition"            ("background " ++ backgroundFadeDuration ++ " linear")
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
                                [ githubLink, xLink ]
                            ]
                        , div
                            [ style "flex-grow" "1"
                            , style "width" coverMaxWidth
                            , style "max-height" coverMaxHeight
                            ]
                            [ div
                                [ id "cover-container", class "", style "width" coverMaxWidth, style "position" "relative", style "height" "100%" ]
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
                                , div
                                    [ id "cover-glow"
                                    , style "max-width" coverMaxWidth
                                    , style "aspect-ratio" (coverAspectRatio |> String.fromFloat)
                                    , style "max-height" coverMaxWidth
                                    , style "box-shadow" (boxShadowSize ++ " " ++ boxShadowSize ++ " " ++ boxShadowSize)
                                    , style "border-radius" "20.02px"
                                    , style "filter" "blur(7.5vw)"
                                    ]
                                    []
                                ]
                            , div [ id "cover-text", style "display" "none" ] [ text album.name ]
                            ]
                        , div
                            [ class "d-flex align-items-center justify-content-center"
                            , style "z-index" "1"
                            ]
                            [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/empty-circle.svg" ] []
                            , a [ href album.urlToOpen ] [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
                            , a [ href "#", onClick NextAlbum ] [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
                            ]
                        , div
                            [ style "text-decoration" "none", style "color" "white" ]
                            [ div []
                                [ div
                                    [ style "font-family" "urbanist, sans-serif", style "font-weight" "1000", style "height" "4rem", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center" ]
                                    [ a
                                        [ href ("block/" ++ album.id), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                                        [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt "block current album" ] [], div [] [ text "block" ] ]
                                    , a
                                        [ href "clearAll", class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                                        [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist" ] [], div [] [ text "clear blocked" ] ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
