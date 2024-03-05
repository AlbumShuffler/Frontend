port module Main exposing (..)

import Browser
import Html exposing (Html, div, text, a, img)
import Html.Attributes exposing (..)


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
        boxShadowSize = "150px"
        albumId = "abcdefghij"
        albumName = "100/Die Toteninsel"
        urlToOpenAlbum = "https://example.com"
        coverSourceSet = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703 640w"
        backgroundImageUrl = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703"
        backgroundImageWidth = 640
        backgroundImageHeight = 640
        coverCenterX = (60 |> String.fromInt) ++ "%"
        coverCenterY = (50 |> String.fromInt) ++ "%"
        backgroundImageAspectRatio = (backgroundImageWidth / backgroundImageHeight) |> String.fromFloat
        githubLink = Html.a [ class "mr-05 p-20", href "https://github.com/b0wter/shuffler" ] [ img [ class "social-button", src "img/github.svg", alt "Link to GitHub" ] [] ]
        xLink      = Html.a [ class "ml-05 p-20", href "https://x.com/b0wter" ] [ img [ class "social-button", src "img/x.svg", alt "Link to X" ] [] ]
    in
        div [ id "background-image-container"
            , class "h-100 w-100"
            , style "background-image" ("url(" ++ backgroundImageUrl ++ ")")
            , style "background-position" (coverCenterX ++ " " ++ coverCenterY) 
            ] [
            div [ id "background-color-overlay", class "h-100vh" ] [
                div [ id "layout-container", class "d-flex justify-content-space-between no-wrap-column" ] [
                    
                    -- social links
                    div 
                    [ class "d-flex justify-content-center align-items-center", style "height" "100px", style "margin-top" "5vh" ]
                    [ githubLink, xLink ],
                    

                    -- cover
                    div
                    [ class "d-flex justify-content-center", style "max-height" "calc(80vh - 300px)" ]
                    [ div [ style "position" "relative", style "aspect-ratio" backgroundImageAspectRatio, style "width" ("min(95vw, " ++ (backgroundImageWidth |> String.fromInt) ++ "px)") ]
                      [ img [ id "cover-img"
                            , class "center-in-relative-parent"
                            , style "z-index" "2"
                            , style "max-height" "100%"
                            , style "max-width" ("min(95vw, " ++ (backgroundImageWidth |> String.fromInt) ++ ")")
                            , style "border-radius" "20px"
                            , attribute "srcset" coverSourceSet
                            , alt "album cover" ] []
                      , div [ id "cover-text", class "center-in-relative-parent", style "display" "none" ] [ text albumName ]
                      , div [ class "center-in-relative-parent"
                            , style "z-index" "1"
                            , style "aspect-ratio" "1"
                            , style "height" "100%"
                            , style "opacity" "0.30"
                            , style "background" "linear-gradient(45deg, #DF030E 0%%, #04A5E3 100%%)"
                            , style "box-shadow" (boxShadowSize ++ " " ++ boxShadowSize ++ " " ++ boxShadowSize), style "border-radius" "20.02px", style "filter" ("blur(" ++ boxShadowSize ++")") ] [] ]
                    ],

                    div []
                    [
                      -- album controls (prev, play, next)
                      div 
                      [ class "d-flex align-items-center justify-content-center" ]
                      [ img [ style "padding" "1.5rem", style "height" "25px", style "width" "25px", style "transform" "scaleX(-1)", src "img/empty-circle.svg" ] []
                      , a [ href urlToOpenAlbum ] [ img [ style "height" "10rem", src "img/play.svg", alt "play current album on Spotify" ] [] ]
                      , a [ href "/" ] [ img [ class "p-15", src "img/next.svg", alt "get next suggestion" ] [] ]
                      ]

                      -- blacklist controls
                    , div
                      [ style "text-decoration" "none", style "color" "white" ]
                      [ div []
                        [ div [ style "font-family" "urbanist, sans-serif", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center" ] [ text "0 albums on blacklist"]
                        , div 
                          [ style "font-family" "urbanist, sans-serif", style "font-weight" "1000", style "height" "5rem", style "text-transform" "uppercase", class "d-flex justify-content-center align-items-center"]
                          [ a [ href ("block/" ++ albumId), class "z-2 non-styled-link d-flex align-items-center mr-10" ]
                            [ img [ style "height" "2rem", class "mr-05", src "img/block.svg", alt "block current album" ] []
                            , div [] [ text "add" ]
                            ]
                          , a [ href "clearAll", class "z-2 non-styled-link d-flex align-items-center ml-10" ]
                            [ img [ style "height" "2rem", class "mr-05", src "img/clear-format-white.svg", alt "clear album blacklist"] []
                            , div [] [ text "clear" ]
                            ]
                          ]
                        ]
                      ]
                    ],

                    -- colored shapes
                    div [ class "z-1", style "opacity" "0.4", style "width" "239.62px", style "height" "244.60px", style "left" "calc(50vw - 120px)", style "top" "calc(100vh)", style "position" "absolute", style "transform" "rotate(-54.55deg)", style "transform-origin" "0 0" ]
                    [ div [ class "z-1", style "width" "133.77px", style "height" "179.56px", style "left" "0", style "top" "0", style "position" "absolute", style "transform" "rotate(-43.55deg)", style "transform-origin" "0 0", style "background" "#DF030E", style "box-shadow" "210.86053466796875px 210.86053466796875px 210.86053466796875px", style "filter" "blur(210.86px)"] []
                    , div [ class "z-1", style "width" "133.54px", style "height" "183.31px", style "left" "119.12px", style "top" "-28.67px", style "position" "absolute", style "transform" "rotate(-43.55deg)", style "transform-origin" "0 0", style "background" "#04A5E3", style "box-shadow" "210.86053466796875px 210.86053466796875px 210.86053466796875px", style "filter" "blur(210.86px)"] []
                    ]
                ]
            ]
        ]