module Albums exposing ( Album, ArtistInfo, CoverImage, ArtistWithAlbums )

import ArtistIds exposing (ArtistId(..))
import AlbumIds exposing (AlbumId(..))
import Array exposing(Array)

type alias CoverImage =
    { url : String
    , width: Int
    , height: Int
    }


type alias ArtistInfo =
    { name: String
    , imageUrl: String
    , shortName: String
    , httpFriendlyShortName: String
    , id: ArtistId
    , icon: String
    , coverColorA: String
    , coverColorB: String
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