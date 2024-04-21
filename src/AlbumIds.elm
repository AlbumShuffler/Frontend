module AlbumIds exposing (..)

type AlbumId = AlbumId String


value : AlbumId -> String
value id = case id of AlbumId a -> a