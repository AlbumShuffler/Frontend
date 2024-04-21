module ArtistsWithAlbums exposing ( albumStorage )

import Albums exposing (ArtistWithAlbums)
import AlbumStorageDdf 
import AlbumStorageDdfk 
import AlbumStorageTkkg 
import AlbumStorageTkkgr 
import AlbumStoragePw 
import AlbumStorageFf 

albumStorage : List ArtistWithAlbums
albumStorage =
    [ { artist = AlbumStorageDdf.artistInfo, albums = AlbumStorageDdf.albumStorage }
    , { artist = AlbumStorageDdfk.artistInfo, albums = AlbumStorageDdfk.albumStorage }
    , { artist = AlbumStorageTkkg.artistInfo, albums = AlbumStorageTkkg.albumStorage }
    , { artist = AlbumStorageTkkgr.artistInfo, albums = AlbumStorageTkkgr.albumStorage }
    , { artist = AlbumStoragePw.artistInfo, albums = AlbumStoragePw.albumStorage }
    , { artist = AlbumStorageFf.artistInfo, albums = AlbumStorageFf.albumStorage }
    ]