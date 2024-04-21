module ArtistIds exposing (..)

type ArtistId = ArtistId String


value : ArtistId -> String
value id = case id of ArtistId a -> a


empty : ArtistId
empty = ArtistId ""


isEmpty : ArtistId -> Bool
isEmpty = (==) empty