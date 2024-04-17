module ArtistsWithAlbums exposing ( albumStorage )

import Albums exposing (ArtistWithAlbums)
import AlbumStorageDdf 
import AlbumStorageTkkg 
import AlbumStorageTkkgr 
import AlbumStorageFf 

albumStorage : List ArtistWithAlbums
albumStorage =
    [ { artist = AlbumStorageDdf.artistInfo, albums = AlbumStorageDdf.albumStorage }
    , { artist = AlbumStorageTkkg.artistInfo, albums = AlbumStorageTkkg.albumStorage }
    , { artist = AlbumStorageTkkgr.artistInfo, albums = AlbumStorageTkkgr.albumStorage }
    , { artist = AlbumStorageFf.artistInfo, albums = AlbumStorageFf.albumStorage }
    ]