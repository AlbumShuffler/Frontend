module ArtistSelection exposing (..)
import Albums exposing (ArtistInfo)


type ArtistSelection
    = NoArtistSelected
    | SingleArtistSelected ArtistInfo
    | MultipleArtistsSelected (List ArtistInfo)


fromList : List ArtistInfo -> ArtistSelection
fromList artists =
    case artists of
        [] -> NoArtistSelected
        [ s ] -> SingleArtistSelected s
        many -> MultipleArtistsSelected many


toList : ArtistSelection -> List ArtistInfo
toList selection =
    case selection of
        NoArtistSelected -> []
        SingleArtistSelected a -> [ a ]
        MultipleArtistsSelected m -> m


hasAtLeastOneSelection : ArtistSelection -> Bool
hasAtLeastOneSelection selection =
    case selection of
        NoArtistSelected -> False
        SingleArtistSelected _ -> True
        MultipleArtistsSelected m -> m |> (not << List.isEmpty)