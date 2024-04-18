module Albums exposing ( Album, ArtistInfo, CoverImage, ArtistWithAlbums )

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
    , id: String
    , coverColorA: String
    , coverColorB: String
    }


type alias Album =
    { id : String
    , name : String
    , urlToOpen : String
    , covers: List CoverImage
    }


type alias ArtistWithAlbums =
    { artist: ArtistInfo
    , albums: Array Album
    }