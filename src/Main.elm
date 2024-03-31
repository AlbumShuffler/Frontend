port module Main exposing (..)

import Browser
import Html exposing (Html, div, text, a, img)
import Html.Attributes exposing (..)
import Debug


type alias Flags = { }

type alias Model = 
    { blacklistedAlbums : List String 
    , album: Maybe Album
    }


type alias Album =
    { id: String
    , name: String
    , urlToOpen : String }

type alias AlbumArt =
    { url: String
    , height: Int
    , width: Int }


port cookieReceiver : (String -> msg) -> Sub msg
port fetchCookies : () -> Cmd msg
port setCookie : String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    cookieReceiver GotCookie


emptyModel : Model
emptyModel =
    { blacklistedAlbums = []
    , album = Nothing }


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


init : Flags -> (Model, Cmd Msg)
init _ =
    (emptyModel, fetchCookies ())


deconstructCookie : String -> List String
deconstructCookie content =
    []


constructCookie : List String -> String
constructCookie albums =
    ""


modelToCookie : Model -> String
modelToCookie model =
    constructCookie (model.blacklistedAlbums)


updateModelFromCookie : String -> Model -> Model
updateModelFromCookie content model =
    let
        albumsToBlacklist = deconstructCookie content
    in
        { model | blacklistedAlbums = albumsToBlacklist }


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
    case msg of
        Reset ->
            (emptyModel, setCookie (emptyModel |> modelToCookie))

        GotCookie text ->
            let
                albumsToBlacklist = text |> deconstructCookie
            in
                ({ model | blacklistedAlbums = albumsToBlacklist } , Cmd.none)


view : Model -> Html Msg
view model =
    let
        coverMaxWidth = "min(80vw, " ++ (backgroundImageWidth |> String.fromInt) ++ "px)"
        coverMaxHeight = "min(60vh, 90vw, " ++ (backgroundImageWidth |> String.fromInt) ++ "px)"
        boxShadowSize = "75px"
        albumId = "abcdefghij"
        albumName = "100/Die Toteninsel"
        urlToOpenAlbum = "https://example.com"
        coverSourceSet = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703 640w"
        backgroundImageUrl = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703"
        backgroundImageWidth = 640
        backgroundImageHeight = 640
        coverCenterX = (60 |> String.fromInt) ++ "%"
        coverCenterY = (50 |> String.fromInt) ++ "%"
        --backgroundImageAspectRatio = (backgroundImageWidth / backgroundImageHeight) |> String.fromFloat
        githubLink = Html.a [ class "mr-05 p-15", href "https://github.com/b0wter/shuffler" ] [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]
        xLink      = Html.a [ class "ml-05 p-15", href "https://x.com/b0wter" ] [ img [ class "social-button", src "img/x.svg", alt "Link to X" ] [] ]
    in
        div
        [ id "background-image-container"
        , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
        , style "background-position" (coverCenterX ++ " " ++ coverCenterY) 
        ]
        [ div 
          [ id "background-color-overlay"
          ] 
          [ div 
            [ id "inner-layout-container"
            , class "d-flex flex-column"
            , style "height" "100svh"
            ]
            [ div 
              [] 
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
                [ style "width" coverMaxWidth, style "position" "relative", style "height" "100%" ]
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
                  , style "opacity" "0.7"
                  , style "position" "absolute"
                  , style "top" "0"
                  , style "bottom" "0"
                  , style "width" coverMaxWidth
                  , style "z-index" "0"
                  , style "max-height" coverMaxWidth
                  , style "background" "linear-gradient(45deg, #DF030E 0%, #04A5E3 100%)"
                  , style "box-shadow" (boxShadowSize ++ " " ++ boxShadowSize ++ " " ++ boxShadowSize), style "border-radius" "20.02px", style "filter" ("blur(7.5vw)")
                  ]
                  [ ]
                ]
              , div [ id "cover-text", style "display" "none" ] [ text albumName ]
              ]
            , div 
              [ class "d-flex align-items-center justify-content-center"
              , style "z-index" "1"
              ]
              [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/empty-circle.svg" ] []
              , a [ href urlToOpenAlbum ] [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
              , a [ href "/" ] [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
              ]
            , div
              [ style "text-decoration" "none", style "color" "white" ]
              [ div []
              [ div 
                [ style "font-family" "urbanist, sans-serif", style "font-weight" "1000", style "height" "4rem", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center" ]
                [ a
                  [ href ("block/" ++ albumId), class "z-2 small-text non-styled-link d-flex align-items-center mr-10" ]
                  [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt "block current album" ] [], div [] [ text "block" ] ]
                , a
                  [ href "clearAll", class "z-2 small-text non-styled-link d-flex align-items-center ml-10" ]
                  [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist"] [], div [] [ text "clear blocked" ] ]
                ]
              ]
            ]
            ]
          ]
        ]
