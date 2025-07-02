module Albums exposing (Album, ArtistInfo, ArtistWithAlbums, CoverImage, emptyArtistInfo)

import AlbumIds exposing (AlbumId(..))
import Array exposing (Array)
import ArtistIds exposing (ArtistId(..))


type alias CoverImage =
    { url : String
    , width : Int
    , height : Int
    }


type alias ArtistImage =
    { url : String
    , width : Int
    , height : Int
    }


type alias ArtistInfo =
    { name : String
    , images : List ArtistImage
    , shortName : String
    , id : ArtistId
    , icon : String
    , coverColorA : String
    , coverColorB : String
    , coverCenterX : Int
    , coverCenterY : Int
    , altCoverCenterX : Maybe Int
    , altCoverCenterY : Maybe Int
    , lastUpdated : String
    }


type alias Album =
    { id : AlbumId
    , name : String
    , urlToOpen : String
    , covers : List CoverImage
    }


type alias ArtistWithAlbums =
    { artist : ArtistInfo
    , albums : Array Album
    }


emptyArtistInfo : ArtistInfo
emptyArtistInfo =
    { id = "dummy artist info" |> ArtistId
    , name = "dummy artist info"
    , images = []
    , shortName = "dummy"
    , icon = "img/dummy.png"
    , coverColorA = "#ffffff"
    , coverColorB = "#ffffff"
    , coverCenterX = 50
    , coverCenterY = 50
    , altCoverCenterX = Nothing
    , altCoverCenterY = Nothing
    , lastUpdated = "<never updated>"
    }
