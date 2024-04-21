module AlbumIds exposing (..)

type AlbumId = AlbumId String


value : AlbumId -> String
value id = case id of AlbumId a -> a


empty : AlbumId
empty = AlbumId ""


isEmpty : AlbumId -> Bool
isEmpty = (==) empty