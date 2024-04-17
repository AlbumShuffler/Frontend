module AlbumStorageTkkgr exposing ( albumStorage, artistInfo )

import Array exposing(Array)
import Albums exposing (Album, ArtistInfo)


artistInfo : ArtistInfo
artistInfo =
  { name = "TKKG Retro-Archiv" 
  , imageUrl = "https://i.scdn.co/image/ab6761610000e5eb60367627a2292ba3bc27fe58" 
  , shortName = "TKKG(R)"
  , httpFriendlyShortName = "tkkgr"
  }


albumStorage : Array Album
albumStorage =
    [ { id = "7GEeLJHM26JEPsMphuGdpv"
      , name = "099/Hilflos in eisiger Nacht"
      , urlToOpen = "https://open.spotify.com/album/7GEeLJHM26JEPsMphuGdpv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e91ea41595937dfdbfc2684f"
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e91ea41595937dfdbfc2684f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e91ea41595937dfdbfc2684f"
              , width = 64 
              , height = 64 
              }
            ] }
    , { id = "5XIQ7snWep9Ve5R6TEAbKe"
      , name = "098/Die Haie vom Lotus-Garten"
      , urlToOpen = "https://open.spotify.com/album/5XIQ7snWep9Ve5R6TEAbKe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731b229f1b91cfea58aa02e8a0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021b229f1b91cfea58aa02e8a0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511b229f1b91cfea58aa02e8a0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "62ubTJeNMqXACrW43uK1fV"
      , name = "097/Die Hand an den Sternen"
      , urlToOpen = "https://open.spotify.com/album/62ubTJeNMqXACrW43uK1fV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dcea2a5e46c0dd2765fbff59" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dcea2a5e46c0dd2765fbff59"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dcea2a5e46c0dd2765fbff59"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3xv5DyV1HzdZOtHkRwGOul"
      , name = "096/Die Entführung des Popstars"
      , urlToOpen = "https://open.spotify.com/album/3xv5DyV1HzdZOtHkRwGOul"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27389654b1d7bcbd6004ee5ab10" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0289654b1d7bcbd6004ee5ab10"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485189654b1d7bcbd6004ee5ab10"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4JuBG4ko46TyAF2R1A0APA"
      , name = "095/U-Bahn des Schreckens"
      , urlToOpen = "https://open.spotify.com/album/4JuBG4ko46TyAF2R1A0APA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27349b3feca0e3fe45f24e0598c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0249b3feca0e3fe45f24e0598c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485149b3feca0e3fe45f24e0598c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0in2tMW0QlYkCN4xZGMKFw"
      , name = "094/In dunkler Nacht am Marmor-Grab"
      , urlToOpen = "https://open.spotify.com/album/0in2tMW0QlYkCN4xZGMKFw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273046109bd4415a6cbdc28b01c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02046109bd4415a6cbdc28b01c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851046109bd4415a6cbdc28b01c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2rwdnrSrnLwwNt3fVB4dj5"
      , name = "093/Die Opfer mit der kühlen Schnauze"
      , urlToOpen = "https://open.spotify.com/album/2rwdnrSrnLwwNt3fVB4dj5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aa143b56f3071eb152ef0dce" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aa143b56f3071eb152ef0dce"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aa143b56f3071eb152ef0dce"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2XWTTxWMfvyYmCOIgSDCbX"
      , name = "092/Der grausame Rächer"
      , urlToOpen = "https://open.spotify.com/album/2XWTTxWMfvyYmCOIgSDCbX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734a2b105037b57e7fc496ce85" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024a2b105037b57e7fc496ce85"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514a2b105037b57e7fc496ce85"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4NP8OOY8jxn9vVrc2YHMnY"
      , name = "091/Crash-Kids riskieren ihr Leben"
      , urlToOpen = "https://open.spotify.com/album/4NP8OOY8jxn9vVrc2YHMnY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27374a914fe3635503c5bc083f1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0274a914fe3635503c5bc083f1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485174a914fe3635503c5bc083f1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1eLwikBnqjNWSaczaR5cgO"
      , name = "090/Schmuggler reisen unerkannt"
      , urlToOpen = "https://open.spotify.com/album/1eLwikBnqjNWSaczaR5cgO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca132eb530857af934cd4087" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca132eb530857af934cd4087"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca132eb530857af934cd4087"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3MnUfnTrRAtu2NQzUS2QSK"
      , name = "089/Feind aus der Vergangenheit"
      , urlToOpen = "https://open.spotify.com/album/3MnUfnTrRAtu2NQzUS2QSK"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d9786fecfec05cbf45822f76" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d9786fecfec05cbf45822f76"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d9786fecfec05cbf45822f76"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0t5UTq7hP9bwyfOQVwo4t6"
      , name = "088/Kampf um das Zauberschwert \"Drachenauge\""
      , urlToOpen = "https://open.spotify.com/album/0t5UTq7hP9bwyfOQVwo4t6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ad7fa75922a5d99cfab58200" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ad7fa75922a5d99cfab58200"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ad7fa75922a5d99cfab58200"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0jDEX8MeGHhO2y6YnG6hSc"
      , name = "087/Der böse Geist vom Waisenhaus"
      , urlToOpen = "https://open.spotify.com/album/0jDEX8MeGHhO2y6YnG6hSc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739ad0fb607728cd858c925389" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029ad0fb607728cd858c925389"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519ad0fb607728cd858c925389"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4LR2bwS219DfsOZCXUtf9W"
      , name = "086/Die Schatzsucher-Mafia schlägt zu"
      , urlToOpen = "https://open.spotify.com/album/4LR2bwS219DfsOZCXUtf9W"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273592d75216ab0319a2a64b8df" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02592d75216ab0319a2a64b8df"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851592d75216ab0319a2a64b8df"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6wQkT3EBgw4lzKjjK4RLje"
      , name = "085/Freiheit für gequälte Tiere"
      , urlToOpen = "https://open.spotify.com/album/6wQkT3EBgw4lzKjjK4RLje"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27378e1d87d803c2db12f375b32" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0278e1d87d803c2db12f375b32"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485178e1d87d803c2db12f375b32"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0pqrBK8Iyz8zrFEhdLXUXb"
      , name = "084/Dynamit im Kofferraum"
      , urlToOpen = "https://open.spotify.com/album/0pqrBK8Iyz8zrFEhdLXUXb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dde1a606a87e30906fc2af0c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dde1a606a87e30906fc2af0c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dde1a606a87e30906fc2af0c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0aCNZDvswOwzDT0tMmzc0y"
      , name = "083/Hilfe! Gaby in Gefahr"
      , urlToOpen = "https://open.spotify.com/album/0aCNZDvswOwzDT0tMmzc0y"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27307d765dc1545fb12496fa7a0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0207d765dc1545fb12496fa7a0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485107d765dc1545fb12496fa7a0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "69eO2hzbouPoPBrcDf4JWx"
      , name = "082/Spuk aus dem Jenseits"
      , urlToOpen = "https://open.spotify.com/album/69eO2hzbouPoPBrcDf4JWx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273db8f25c70b738a124b014c07" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02db8f25c70b738a124b014c07"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851db8f25c70b738a124b014c07"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2TjBhMvnNmCpvITGAS9p6v"
      , name = "081/Horror-Trip im Luxusauto"
      , urlToOpen = "https://open.spotify.com/album/2TjBhMvnNmCpvITGAS9p6v"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f4d0be571e417462c30d2c27" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f4d0be571e417462c30d2c27"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f4d0be571e417462c30d2c27"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "03jgLfxIX1vVDXMn7tjW0e"
      , name = "080/Weißes Gift im Nachtexpress"
      , urlToOpen = "https://open.spotify.com/album/03jgLfxIX1vVDXMn7tjW0e"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27345bb99fa72e0619288231863" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0245bb99fa72e0619288231863"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485145bb99fa72e0619288231863"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3MUa6rKq5BGATlYUMD14jO"
      , name = "079/Ein Toter braucht Hilfe"
      , urlToOpen = "https://open.spotify.com/album/3MUa6rKq5BGATlYUMD14jO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fc773fcbd4a488edffc0ed38" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fc773fcbd4a488edffc0ed38"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fc773fcbd4a488edffc0ed38"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4pngmVzpD9i8f4F3cjobAU"
      , name = "078/Heißer Draht nach Paradiso"
      , urlToOpen = "https://open.spotify.com/album/4pngmVzpD9i8f4F3cjobAU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a5ac03828f3261ad117681c9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a5ac03828f3261ad117681c9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a5ac03828f3261ad117681c9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0rp0SCiA1hcrCJqiiG9dNO"
      , name = "077/Der erpresste Erpresser"
      , urlToOpen = "https://open.spotify.com/album/0rp0SCiA1hcrCJqiiG9dNO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c8913ffe285c4a40b8a5e715" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c8913ffe285c4a40b8a5e715"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c8913ffe285c4a40b8a5e715"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Ju9fXwVzHhLjpzbMzMti5"
      , name = "076/Die Goldgräber-Bande"
      , urlToOpen = "https://open.spotify.com/album/6Ju9fXwVzHhLjpzbMzMti5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273996d67303bc02ae2b9f1d0a7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02996d67303bc02ae2b9f1d0a7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851996d67303bc02ae2b9f1d0a7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1C0atYAGpLJLcxdSu6iQZJ"
      , name = "075/Lösegeld am Henkersberg"
      , urlToOpen = "https://open.spotify.com/album/1C0atYAGpLJLcxdSu6iQZJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730b5e9b27170f88c62f684cd0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020b5e9b27170f88c62f684cd0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510b5e9b27170f88c62f684cd0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1qwf1F06HyFYSvQpcGNuU0"
      , name = "074/Im Schattenreich des Dr. Mubase"
      , urlToOpen = "https://open.spotify.com/album/1qwf1F06HyFYSvQpcGNuU0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734a13785cf094239e1e026ec6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024a13785cf094239e1e026ec6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514a13785cf094239e1e026ec6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2pjIisAo6RrFZe4fgoAJNe"
      , name = "073/Herr der Schlangeninsel"
      , urlToOpen = "https://open.spotify.com/album/2pjIisAo6RrFZe4fgoAJNe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739adde3e3fe52106541557b7a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029adde3e3fe52106541557b7a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519adde3e3fe52106541557b7a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "280pPhAMoxhHFqrBe7TopM"
      , name = "072/Taschengeld für ein Gespenst"
      , urlToOpen = "https://open.spotify.com/album/280pPhAMoxhHFqrBe7TopM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738f45285e3e23d91017ac7b21" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028f45285e3e23d91017ac7b21"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518f45285e3e23d91017ac7b21"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5SWVBdSwIh4erbo6Hw3WO8"
      , name = "071/Stimme aus der Unterwelt"
      , urlToOpen = "https://open.spotify.com/album/5SWVBdSwIh4erbo6Hw3WO8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fd671b7a29af945287917c83" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fd671b7a29af945287917c83"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fd671b7a29af945287917c83"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3vHzoGBo7WHbIbIEhVyp8H"
      , name = "070/Wer hat Tims Mutter entführt?"
      , urlToOpen = "https://open.spotify.com/album/3vHzoGBo7WHbIbIEhVyp8H"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273720e5294616b584985ebee94" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02720e5294616b584985ebee94"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851720e5294616b584985ebee94"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4li0i9hTORZh4lb2pvH7H4"
      , name = "069/Achtung! Die \"Monsters\" kommen"
      , urlToOpen = "https://open.spotify.com/album/4li0i9hTORZh4lb2pvH7H4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736058bcee1c037bce33b91655" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026058bcee1c037bce33b91655"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516058bcee1c037bce33b91655"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5lkSDRBNtYBR7jXqLgGIPM"
      , name = "068/Rauschgift-Razzia im Internat"
      , urlToOpen = "https://open.spotify.com/album/5lkSDRBNtYBR7jXqLgGIPM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273694483ade1ba284ef7621cc3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02694483ade1ba284ef7621cc3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851694483ade1ba284ef7621cc3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6d7ve3mWIxMyLtvmrDe3oN"
      , name = "067/Hinterhalt im Eulenforst"
      , urlToOpen = "https://open.spotify.com/album/6d7ve3mWIxMyLtvmrDe3oN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273359a21603d49910f557ac94c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02359a21603d49910f557ac94c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851359a21603d49910f557ac94c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2dH5NcZY7KT82TjA3mR0IL"
      , name = "066/Gauner mit der \"Goldenen Hand\""
      , urlToOpen = "https://open.spotify.com/album/2dH5NcZY7KT82TjA3mR0IL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27320d8f9cbbbe6e1db97e4636d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0220d8f9cbbbe6e1db97e4636d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485120d8f9cbbbe6e1db97e4636d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2ubE3axmR41kSXAjEcluEz"
      , name = "065/Sklaven für Wutawia"
      , urlToOpen = "https://open.spotify.com/album/2ubE3axmR41kSXAjEcluEz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bf923c0c94c629722180bb34" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bf923c0c94c629722180bb34"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bf923c0c94c629722180bb34"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2IRabdIB4ipjSfWGfJJz1p"
      , name = "064/Schwarze Pest aus Indien"
      , urlToOpen = "https://open.spotify.com/album/2IRabdIB4ipjSfWGfJJz1p"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c951dacde6ab695b36c76ba5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c951dacde6ab695b36c76ba5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c951dacde6ab695b36c76ba5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2bOBGz1gR4iSubZIpQXAYP"
      , name = "063/Die Falle am Fuchsbach"
      , urlToOpen = "https://open.spotify.com/album/2bOBGz1gR4iSubZIpQXAYP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e5efecc16455374e3781baf7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e5efecc16455374e3781baf7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e5efecc16455374e3781baf7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3qSQqJtFmTznYTrNBqPyyw"
      , name = "062/Terror aus dem \"Pulverfaß\""
      , urlToOpen = "https://open.spotify.com/album/3qSQqJtFmTznYTrNBqPyyw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c2122aa0912f26e80ab1d5ea" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c2122aa0912f26e80ab1d5ea"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c2122aa0912f26e80ab1d5ea"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6gkTtqPnKizQNP2Wku47ye"
      , name = "061/Im Schatten des Dämons"
      , urlToOpen = "https://open.spotify.com/album/6gkTtqPnKizQNP2Wku47ye"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731cb07b8d9aab6f33a94d11a7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021cb07b8d9aab6f33a94d11a7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511cb07b8d9aab6f33a94d11a7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1m43QTxE0cdGCpSaFED1mb"
      , name = "060/Der Teufel vom Waiga-See"
      , urlToOpen = "https://open.spotify.com/album/1m43QTxE0cdGCpSaFED1mb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731a6435002b84cb33116285ad" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021a6435002b84cb33116285ad"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511a6435002b84cb33116285ad"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "49t3y9iAQqThpImvvQos0s"
      , name = "059/Trickdieb auf Burg Drachenstein"
      , urlToOpen = "https://open.spotify.com/album/49t3y9iAQqThpImvvQos0s"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27338563fae409d33c0f08e4130" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0238563fae409d33c0f08e4130"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485138563fae409d33c0f08e4130"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "44DE85CejNlCyUQOK1DMym"
      , name = "058/Der doppelte Pedro"
      , urlToOpen = "https://open.spotify.com/album/44DE85CejNlCyUQOK1DMym"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f37407bf2bdf858a591e0672" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f37407bf2bdf858a591e0672"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f37407bf2bdf858a591e0672"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "75Sbt9YzxwmT50cdOpQuwi"
      , name = "057/Jagt das rote Geisterauto!"
      , urlToOpen = "https://open.spotify.com/album/75Sbt9YzxwmT50cdOpQuwi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27319a29fcc56158c2b120f8910" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0219a29fcc56158c2b120f8910"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485119a29fcc56158c2b120f8910"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1Og3x45AhCqdmif9zWopbY"
      , name = "056/Todesgruß vom Gelben Drachen"
      , urlToOpen = "https://open.spotify.com/album/1Og3x45AhCqdmif9zWopbY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d1dd81b1726d9766d9c7bce3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d1dd81b1726d9766d9c7bce3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d1dd81b1726d9766d9c7bce3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Lm9p4iJstI3iwOD8oEZMo"
      , name = "055/Der Mörder aus dem Schauerwald"
      , urlToOpen = "https://open.spotify.com/album/2Lm9p4iJstI3iwOD8oEZMo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b7f5753d39f3d4f033b1d444" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b7f5753d39f3d4f033b1d444"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b7f5753d39f3d4f033b1d444"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2tQjarBMugwtJGLPISSqkx"
      , name = "054/Alarm! Klößchen ist verschwunden"
      , urlToOpen = "https://open.spotify.com/album/2tQjarBMugwtJGLPISSqkx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b9b80227647ab1d3ca9e04a5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b9b80227647ab1d3ca9e04a5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b9b80227647ab1d3ca9e04a5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4qoN8RkWifzeVqzLIGBGBL"
      , name = "053/Schüsse aus der Rosenhecke"
      , urlToOpen = "https://open.spotify.com/album/4qoN8RkWifzeVqzLIGBGBL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733c9649103cc78e9e2d296f56" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023c9649103cc78e9e2d296f56"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513c9649103cc78e9e2d296f56"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3GwBNJd3vbi33MkAOgWhWL"
      , name = "052/Überfall im Hafen"
      , urlToOpen = "https://open.spotify.com/album/3GwBNJd3vbi33MkAOgWhWL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733a9e9b6d7f3cf61502a3f284" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023a9e9b6d7f3cf61502a3f284"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513a9e9b6d7f3cf61502a3f284"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4WOjS2gDgi6sCFNN2xbXz1"
      , name = "051/Gangster auf der Gartenparty"
      , urlToOpen = "https://open.spotify.com/album/4WOjS2gDgi6sCFNN2xbXz1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273081184f45643a7eafbf6e90a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02081184f45643a7eafbf6e90a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851081184f45643a7eafbf6e90a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1CAidQFFQWvxTFUZZ94TEm"
      , name = "050/Spion auf der Flucht"
      , urlToOpen = "https://open.spotify.com/album/1CAidQFFQWvxTFUZZ94TEm"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273da1f5d303584b0d303e64a20" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02da1f5d303584b0d303e64a20"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851da1f5d303584b0d303e64a20"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "517mEgMBkbNEOKvbKkAQVy"
      , name = "049/Bombe an Bord"
      , urlToOpen = "https://open.spotify.com/album/517mEgMBkbNEOKvbKkAQVy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa12b51f4009ae83a5a8fc0a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa12b51f4009ae83a5a8fc0a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa12b51f4009ae83a5a8fc0a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4WgadnXmyPlFzQ6GyHUqRw"
      , name = "048/Bestien der Finsternis"
      , urlToOpen = "https://open.spotify.com/album/4WgadnXmyPlFzQ6GyHUqRw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a41b51a9cb08c3ca506994bb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a41b51a9cb08c3ca506994bb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a41b51a9cb08c3ca506994bb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1d38ND8yadbLTLEhehVWRp"
      , name = "047/Todesfracht im Jaguar"
      , urlToOpen = "https://open.spotify.com/album/1d38ND8yadbLTLEhehVWRp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27355ec92325aab28412e102d91" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0255ec92325aab28412e102d91"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485155ec92325aab28412e102d91"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6epiNHYc23EgElvraBVTUB"
      , name = "046/Hotel in Flammen"
      , urlToOpen = "https://open.spotify.com/album/6epiNHYc23EgElvraBVTUB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ea2e2d51c77af2c80761f50c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ea2e2d51c77af2c80761f50c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ea2e2d51c77af2c80761f50c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1KNZFZQYNPJOlX3sxrBOSE"
      , name = "045/Unternehmen Grüne Hölle"
      , urlToOpen = "https://open.spotify.com/album/1KNZFZQYNPJOlX3sxrBOSE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273922d41285f4b2ec43fd00cf3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02922d41285f4b2ec43fd00cf3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851922d41285f4b2ec43fd00cf3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6L8cRmK9LrR4OYbwIb4prW"
      , name = "044/Um Mitternacht am schwarzen Fluß"
      , urlToOpen = "https://open.spotify.com/album/6L8cRmK9LrR4OYbwIb4prW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739abff053658000ec790c1fb9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029abff053658000ec790c1fb9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519abff053658000ec790c1fb9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6LlaB9vjnahov25yQWlGfG"
      , name = "043/Gefangen in der Schreckenskammer"
      , urlToOpen = "https://open.spotify.com/album/6LlaB9vjnahov25yQWlGfG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739bf6e80db0f2bc72cb9764b9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029bf6e80db0f2bc72cb9764b9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519bf6e80db0f2bc72cb9764b9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5ww0350exp0oCRS9arplvu"
      , name = "042/Anschlag auf den Silberpfeil"
      , urlToOpen = "https://open.spotify.com/album/5ww0350exp0oCRS9arplvu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731fd5761732adf56b2335066b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021fd5761732adf56b2335066b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511fd5761732adf56b2335066b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Ebu2fMGeXFXX9uJdLPxPO"
      , name = "041/Heißes Gold im Silbersee"
      , urlToOpen = "https://open.spotify.com/album/0Ebu2fMGeXFXX9uJdLPxPO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732e68c4b5ef818ac62434654a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022e68c4b5ef818ac62434654a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512e68c4b5ef818ac62434654a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "07xFaDO6M3YzpSE5FrEJUj"
      , name = "040/Duell im Morgengrauen"
      , urlToOpen = "https://open.spotify.com/album/07xFaDO6M3YzpSE5FrEJUj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734a3c207244523df7f8643f98" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024a3c207244523df7f8643f98"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514a3c207244523df7f8643f98"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "50ns4wTGElvzJtYF7J6TYS"
      , name = "039/Die Gift-Party"
      , urlToOpen = "https://open.spotify.com/album/50ns4wTGElvzJtYF7J6TYS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27336427b5643980f4230c9de61" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0236427b5643980f4230c9de61"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485136427b5643980f4230c9de61"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2w7g51yGAlnfRpsbmanami"
      , name = "038/Die weiße Schmuggler-Yacht"
      , urlToOpen = "https://open.spotify.com/album/2w7g51yGAlnfRpsbmanami"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa7461b899e9ffa414480660" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa7461b899e9ffa414480660"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa7461b899e9ffa414480660"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3AoA7wKNOW7rmtpzSCijcR"
      , name = "036/Das Geschenk des Bösen"
      , urlToOpen = "https://open.spotify.com/album/3AoA7wKNOW7rmtpzSCijcR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731850f728e306fbee61161c12" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021850f728e306fbee61161c12"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511850f728e306fbee61161c12"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3PE3WIY7dTLhAS6WzTb2gx"
      , name = "035/Die Nacht des Überfalls"
      , urlToOpen = "https://open.spotify.com/album/3PE3WIY7dTLhAS6WzTb2gx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c08dd3915977d2d288220056" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c08dd3915977d2d288220056"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c08dd3915977d2d288220056"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0r50DZDZPJdUgqprZH8Uiz"
      , name = "034/Vampir der Autobahn"
      , urlToOpen = "https://open.spotify.com/album/0r50DZDZPJdUgqprZH8Uiz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d696bf8514ef74c119a7fe2d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d696bf8514ef74c119a7fe2d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d696bf8514ef74c119a7fe2d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0dfv6DKH5AQmscC7xXTENC"
      , name = "033/Wer raubte das Millionenpferd?"
      , urlToOpen = "https://open.spotify.com/album/0dfv6DKH5AQmscC7xXTENC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c763b243a7894ff32592084a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c763b243a7894ff32592084a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c763b243a7894ff32592084a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4PjUBvlQ01A9LRfZ27reQb"
      , name = "032/Wilddiebe im Teufelsmoor"
      , urlToOpen = "https://open.spotify.com/album/4PjUBvlQ01A9LRfZ27reQb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739d741f3f199c4c9ebbfc840c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029d741f3f199c4c9ebbfc840c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519d741f3f199c4c9ebbfc840c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1nEMgpdr0RTPYPdAmeblSx"
      , name = "031/Die Entführung in der Mondscheingasse"
      , urlToOpen = "https://open.spotify.com/album/1nEMgpdr0RTPYPdAmeblSx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e02e06d6cba6b7adf571aa78" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e02e06d6cba6b7adf571aa78"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e02e06d6cba6b7adf571aa78"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "28C564LrC7JsVlHe3e0Btv"
      , name = "030/Die Mafia kommt zur Geisterstunde"
      , urlToOpen = "https://open.spotify.com/album/28C564LrC7JsVlHe3e0Btv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273152fb7fd712aeb20f0fc91ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02152fb7fd712aeb20f0fc91ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851152fb7fd712aeb20f0fc91ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Sg92NzoOMzEuQIpgIhgOO"
      , name = "029/Hundediebe kennen keine Gnade"
      , urlToOpen = "https://open.spotify.com/album/2Sg92NzoOMzEuQIpgIhgOO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b02d7ecc208e9092cd555e95" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b02d7ecc208e9092cd555e95"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b02d7ecc208e9092cd555e95"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4QGudxuEAcnfuNllrivq5W"
      , name = "028/Verrat im Höllental"
      , urlToOpen = "https://open.spotify.com/album/4QGudxuEAcnfuNllrivq5W"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b66bd26d9591739a99071e55" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b66bd26d9591739a99071e55"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b66bd26d9591739a99071e55"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "34KfrLQf8eqtIlHPiniXgN"
      , name = "027/Banditen im Palasthotel"
      , urlToOpen = "https://open.spotify.com/album/34KfrLQf8eqtIlHPiniXgN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fbbd971fa2aad81e984d9e87" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fbbd971fa2aad81e984d9e87"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fbbd971fa2aad81e984d9e87"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6QeaqV74RWxGdh0J4QBIww"
      , name = "026/Das Geiseldrama"
      , urlToOpen = "https://open.spotify.com/album/6QeaqV74RWxGdh0J4QBIww"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27368ab7480f4013009d6d04a7a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0268ab7480f4013009d6d04a7a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485168ab7480f4013009d6d04a7a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5fIqw30fRsl0RNHAamxD0h"
      , name = "025/Die Stunde der schwarzen Maske"
      , urlToOpen = "https://open.spotify.com/album/5fIqw30fRsl0RNHAamxD0h"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739b318a565f09633fd1a44028" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029b318a565f09633fd1a44028"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519b318a565f09633fd1a44028"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0BdEwpfNwNkJUTwxIXJo5Z"
      , name = "024/Gefährliche Diamanten"
      , urlToOpen = "https://open.spotify.com/album/0BdEwpfNwNkJUTwxIXJo5Z"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737b56ce6c9d320d4635a02b6a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027b56ce6c9d320d4635a02b6a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517b56ce6c9d320d4635a02b6a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "26dIpIYfi9fSeEeoHfRRqR"
      , name = "023/Kampf der Spione"
      , urlToOpen = "https://open.spotify.com/album/26dIpIYfi9fSeEeoHfRRqR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cac7baada389d734d3059e1c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cac7baada389d734d3059e1c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cac7baada389d734d3059e1c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7gHX31YKrpfWBFTlTjWpzt"
      , name = "022/In den Klauen des Tigers"
      , urlToOpen = "https://open.spotify.com/album/7gHX31YKrpfWBFTlTjWpzt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273661a14045134ba1609a82e76" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02661a14045134ba1609a82e76"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851661a14045134ba1609a82e76"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4CUF3gCdwhOg1EdpSaIH2y"
      , name = "021/Die Rache des Bombenlegers"
      , urlToOpen = "https://open.spotify.com/album/4CUF3gCdwhOg1EdpSaIH2y"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27320443ab0d1a1571908798679" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0220443ab0d1a1571908798679"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485120443ab0d1a1571908798679"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6KmOIZoB1FWJrYwSLMQVKH"
      , name = "018/Hexenjagd in Lerchenbach"
      , urlToOpen = "https://open.spotify.com/album/6KmOIZoB1FWJrYwSLMQVKH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730c2b575f950c215cdf884078" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020c2b575f950c215cdf884078"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510c2b575f950c215cdf884078"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "028hFwVAqF3qtl2rqM5nlD"
      , name = "017/Die Doppelgängerin"
      , urlToOpen = "https://open.spotify.com/album/028hFwVAqF3qtl2rqM5nlD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a97acc8ea0543332cc17489b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a97acc8ea0543332cc17489b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a97acc8ea0543332cc17489b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2z2U3d7vEXBmQm8IBg0mFj"
      , name = "016/X7 antwortet nicht"
      , urlToOpen = "https://open.spotify.com/album/2z2U3d7vEXBmQm8IBg0mFj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737d84da4c1e69811d283525d9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027d84da4c1e69811d283525d9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517d84da4c1e69811d283525d9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3xr2gj74ceKjRFScuN0uWS"
      , name = "015/Ufos in Bad Finkenstein"
      , urlToOpen = "https://open.spotify.com/album/3xr2gj74ceKjRFScuN0uWS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273da0880ac8a1da398eb93c4f1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02da0880ac8a1da398eb93c4f1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851da0880ac8a1da398eb93c4f1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Tnj8gSYW5FKa9qcyG46uS"
      , name = "014/Der Schlangenmensch"
      , urlToOpen = "https://open.spotify.com/album/2Tnj8gSYW5FKa9qcyG46uS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d9e600e7ebf82dc7c97e223a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d9e600e7ebf82dc7c97e223a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d9e600e7ebf82dc7c97e223a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1pSX9vO6inD71umv5SoDxV"
      , name = "013/Die Bettelmönche aus Atlantis"
      , urlToOpen = "https://open.spotify.com/album/1pSX9vO6inD71umv5SoDxV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738291078c1b158b9524dca175" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028291078c1b158b9524dca175"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518291078c1b158b9524dca175"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2KaWF3eANzWbtnpEHuxHVh"
      , name = "012/Nachts, wenn der Feuerteufel kommt"
      , urlToOpen = "https://open.spotify.com/album/2KaWF3eANzWbtnpEHuxHVh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273da5bf20facb98f2c9c06ee4d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02da5bf20facb98f2c9c06ee4d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851da5bf20facb98f2c9c06ee4d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4yeVIdrGglPUWEl86T2Sgz"
      , name = "011/Die Falschmünzer vom Mäuseweg"
      , urlToOpen = "https://open.spotify.com/album/4yeVIdrGglPUWEl86T2Sgz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ea903c7255d7bf3e3c8e83f1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ea903c7255d7bf3e3c8e83f1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ea903c7255d7bf3e3c8e83f1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7egcWhxwfDEyfW1iddazLc"
      , name = "010/Alarm im Zirkus Sarani!"
      , urlToOpen = "https://open.spotify.com/album/7egcWhxwfDEyfW1iddazLc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273864d69b596d04541756fef52" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02864d69b596d04541756fef52"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851864d69b596d04541756fef52"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6fv4ajGQ8VOEWkPGCBM8Bk"
      , name = "009/Abenteuer im Ferienlager"
      , urlToOpen = "https://open.spotify.com/album/6fv4ajGQ8VOEWkPGCBM8Bk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733b46159957a4c0618ea72883" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023b46159957a4c0618ea72883"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513b46159957a4c0618ea72883"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6nDOtfqoFRO3cEbvn0dA7F"
      , name = "008/Auf der Spur der Vogeljäger"
      , urlToOpen = "https://open.spotify.com/album/6nDOtfqoFRO3cEbvn0dA7F"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739eb1152af097e6fce17349c1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029eb1152af097e6fce17349c1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519eb1152af097e6fce17349c1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1lHBw6I0KkJIJy7K3azKp0"
      , name = "007/Rätsel um die alte Villa"
      , urlToOpen = "https://open.spotify.com/album/1lHBw6I0KkJIJy7K3azKp0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c042f94a6f4458b984b351ff" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c042f94a6f4458b984b351ff"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c042f94a6f4458b984b351ff"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5f3BW9l3gt2IceokHZ6nhB"
      , name = "006/Angst in der 9a"
      , urlToOpen = "https://open.spotify.com/album/5f3BW9l3gt2IceokHZ6nhB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731f536fc02df72b945d88b2ff" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021f536fc02df72b945d88b2ff"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511f536fc02df72b945d88b2ff"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6L5QghMB2McNx1mlxvA9jY"
      , name = "005/Das Phantom auf dem Feuerstuhl"
      , urlToOpen = "https://open.spotify.com/album/6L5QghMB2McNx1mlxvA9jY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273317b3efc19e51a3fe4263cdf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02317b3efc19e51a3fe4263cdf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851317b3efc19e51a3fe4263cdf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7C0OqMlXzeiZIB4TZsygY7"
      , name = "004/Das Paket mit dem Totenkopf"
      , urlToOpen = "https://open.spotify.com/album/7C0OqMlXzeiZIB4TZsygY7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27365c75bc6e2837f4d4a83040a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0265c75bc6e2837f4d4a83040a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485165c75bc6e2837f4d4a83040a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4AoqWaIGkLmowNAfQZieas"
      , name = "003/Das leere Grab im Moor"
      , urlToOpen = "https://open.spotify.com/album/4AoqWaIGkLmowNAfQZieas"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27335d8f58b091f6cbfa745e0fd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0235d8f58b091f6cbfa745e0fd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485135d8f58b091f6cbfa745e0fd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Qq9RYcZ4nZfD4IiHRF78v"
      , name = "002/Der blinde Hellseher"
      , urlToOpen = "https://open.spotify.com/album/6Qq9RYcZ4nZfD4IiHRF78v"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273779e7a554bfa1025a8c0af5a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02779e7a554bfa1025a8c0af5a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851779e7a554bfa1025a8c0af5a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "699XT7D0ROiM2lVjwHAHg9"
      , name = "001/Die Jagd nach den Millionendieben"
      , urlToOpen = "https://open.spotify.com/album/699XT7D0ROiM2lVjwHAHg9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731619ae75f70ad3f07fff31f1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021619ae75f70ad3f07fff31f1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511619ae75f70ad3f07fff31f1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    ] |> Array.fromList
