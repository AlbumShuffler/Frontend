module Albums exposing ( Album, ArtistInfo, CoverImage, ArtistWithAlbums )

import ArtistIds exposing (ArtistId(..))
import AlbumIds exposing (AlbumId(..))
import Array exposing(Array)

type alias CoverImage =
    { url : String
    , width: Int
    , height: Int
    }


type alias ArtistImage =
    { url : String
    , width: Int
    , height: Int
    }


type alias ArtistInfo =
    { name: String
    , images: List ArtistImage
    , shortName: String
    , httpFriendlyShortName: String
    , id: ArtistId
    , icon: String
    , coverColorA: String
    , coverColorB: String
    , coverCenterX: Int
    , coverCenterY: Int
    , altCoverCenterX: Maybe Int
    , altCoverCenterY: Maybe Int
    }


type alias Album =
    { id : AlbumId
    , name : String
    , urlToOpen : String
    , covers: List CoverImage
    }


type alias ArtistWithAlbums =
    { artist: ArtistInfo
    , albums: Array Album
    }