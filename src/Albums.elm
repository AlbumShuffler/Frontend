module Albums exposing ( Album, CoverImage )

type alias CoverImage =
    { url : String
    , width: Int
    , height: Int
    }


type alias Album =
    { id : String
    , name : String
    , urlToOpen : String
    , covers: List CoverImage
    }
