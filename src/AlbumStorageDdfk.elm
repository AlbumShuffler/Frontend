module AlbumStorageDdfk exposing ( albumStorage, artistInfo )

import Array exposing(Array)
import Albums exposing (Album, ArtistInfo)
import ArtistIds exposing (ArtistId(..))
import AlbumIds exposing (AlbumId(..))

artistInfo : ArtistInfo
artistInfo =
  { id = "0vLsqW05dyLvjuKKftAEGA" |> ArtistId
  , name = "Die drei ??? Kids" 
  , imageUrl = "https://i.scdn.co/image/ab6761610000e5eb4b258838de4271df70886fb8" 
  , shortName = "DDF Kids"
  , httpFriendlyShortName = "ddfk"
  , icon = "img/ddfk_transparent.png"
  , coverColorA = "#DF030E"
  , coverColorB = "#04A5E3"
  }


albumStorage : Array Album
albumStorage =
    [ { id = "3xIGmydqrJOShru5bQmSVa" |> AlbumId
      , name = "Folge 95: Geheime Zeichen"
      , urlToOpen = "https://open.spotify.com/album/3xIGmydqrJOShru5bQmSVa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273231cea674889237c6b7bcb29"
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02231cea674889237c6b7bcb29"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851231cea674889237c6b7bcb29"
              , width = 64 
              , height = 64 
              }
            ] }
    , { id = "2SW10jAJqdxfbJZCW6hlEF" |> AlbumId
      , name = "Mini-Fall/Die Piratenbande (Mini-Fall 03)"
      , urlToOpen = "https://open.spotify.com/album/2SW10jAJqdxfbJZCW6hlEF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bfffc8f2a48803021c9cfef7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bfffc8f2a48803021c9cfef7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bfffc8f2a48803021c9cfef7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4I3xNROKxdLC2GFcpp8o2R" |> AlbumId
      , name = "Folge 94: Falsche Vampire"
      , urlToOpen = "https://open.spotify.com/album/4I3xNROKxdLC2GFcpp8o2R"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27351faf41bf0a9ded536853d77" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0251faf41bf0a9ded536853d77"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485151faf41bf0a9ded536853d77"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5o3ryPeYmpRkmgEv4hnDmJ" |> AlbumId
      , name = "Adventskalender - 24 Tage Weihnachtsspuk"
      , urlToOpen = "https://open.spotify.com/album/5o3ryPeYmpRkmgEv4hnDmJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27364efc25345a96c26cdac317f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0264efc25345a96c26cdac317f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485164efc25345a96c26cdac317f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6FLO3ExDCl0GwkzjCQGq0x" |> AlbumId
      , name = "Folge 93: Die Geistermühle"
      , urlToOpen = "https://open.spotify.com/album/6FLO3ExDCl0GwkzjCQGq0x"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737f7171f1d31d5b10fb0b0c92" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027f7171f1d31d5b10fb0b0c92"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517f7171f1d31d5b10fb0b0c92"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2AeYE1PVAulFFJlfp6GYZL" |> AlbumId
      , name = "Mini-Fall/Die Räuberjagd"
      , urlToOpen = "https://open.spotify.com/album/2AeYE1PVAulFFJlfp6GYZL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27301f4c8ebcac54aa50b9205d1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0201f4c8ebcac54aa50b9205d1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485101f4c8ebcac54aa50b9205d1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4793v2qgBpisdJjWcSCjt2" |> AlbumId
      , name = "Folge 92: Spuk im Leuchtturm"
      , urlToOpen = "https://open.spotify.com/album/4793v2qgBpisdJjWcSCjt2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c44fd2f8a2eb34d2adf26487" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c44fd2f8a2eb34d2adf26487"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c44fd2f8a2eb34d2adf26487"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1IrBxq3kgqabhcp6xfIezB" |> AlbumId
      , name = "Mini-Fall/Vorsicht, Zaubertinte!"
      , urlToOpen = "https://open.spotify.com/album/1IrBxq3kgqabhcp6xfIezB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735fbe80d354e3197606dcbf13" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025fbe80d354e3197606dcbf13"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515fbe80d354e3197606dcbf13"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3cbOXb1xkJF65KRjBBqlmL" |> AlbumId
      , name = "Folge 91: Gefahr im Spiegelkabinett"
      , urlToOpen = "https://open.spotify.com/album/3cbOXb1xkJF65KRjBBqlmL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739c6568aed19b926455fc10e5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029c6568aed19b926455fc10e5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519c6568aed19b926455fc10e5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "41Wrbk3iySSFbBnbixychu" |> AlbumId
      , name = "Folge 90: Flug ins Nichts"
      , urlToOpen = "https://open.spotify.com/album/41Wrbk3iySSFbBnbixychu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27329db10f4944680a9f7f7f60d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0229db10f4944680a9f7f7f60d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485129db10f4944680a9f7f7f60d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5MXAyx7ZeQGGbHdR1HEbtU" |> AlbumId
      , name = "Adventskalender - 24 Tage eingeschneit"
      , urlToOpen = "https://open.spotify.com/album/5MXAyx7ZeQGGbHdR1HEbtU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27367d3d2d917e1783d4ffc42e6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0267d3d2d917e1783d4ffc42e6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485167d3d2d917e1783d4ffc42e6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7HIZJWnLo11Fsv68HPhjgj" |> AlbumId
      , name = "Folge 89: Im Geistergarten"
      , urlToOpen = "https://open.spotify.com/album/7HIZJWnLo11Fsv68HPhjgj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737f0b83382835dc4c4d4ec4e8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027f0b83382835dc4c4d4ec4e8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517f0b83382835dc4c4d4ec4e8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1wzirotAAliqPA1p0GPl08" |> AlbumId
      , name = "Folge 88: Schatz aus dem All"
      , urlToOpen = "https://open.spotify.com/album/1wzirotAAliqPA1p0GPl08"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e26770b07eea81752fe5c4b5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e26770b07eea81752fe5c4b5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e26770b07eea81752fe5c4b5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3M7f1Ta7DdY49Cj0bsHchW" |> AlbumId
      , name = "Folge 87: Das Geisterspiel"
      , urlToOpen = "https://open.spotify.com/album/3M7f1Ta7DdY49Cj0bsHchW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735c765ae7916cf96edeedd028" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025c765ae7916cf96edeedd028"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515c765ae7916cf96edeedd028"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3CVr8yD3EmmbTAD3mgdkst" |> AlbumId
      , name = "Folge 86: Riesen in Rocky Beach"
      , urlToOpen = "https://open.spotify.com/album/3CVr8yD3EmmbTAD3mgdkst"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f033185cc58310a1e253c108" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f033185cc58310a1e253c108"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f033185cc58310a1e253c108"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2FRfGv6pQommVYHmqJKqU5" |> AlbumId
      , name = "Folge 85: Falscher Alarm"
      , urlToOpen = "https://open.spotify.com/album/2FRfGv6pQommVYHmqJKqU5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e1019b3acdee54f7535d472f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e1019b3acdee54f7535d472f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e1019b3acdee54f7535d472f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5ZcAMixtzUYEBZNVSrixNE" |> AlbumId
      , name = "Adventskalender - 24 Tage Chaos im Zoo"
      , urlToOpen = "https://open.spotify.com/album/5ZcAMixtzUYEBZNVSrixNE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27371669617bbc9900658520187" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0271669617bbc9900658520187"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485171669617bbc9900658520187"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "11uIA0NksKWJ2xjjTMvO8x" |> AlbumId
      , name = "Folge 84: Tatort Skater-Park"
      , urlToOpen = "https://open.spotify.com/album/11uIA0NksKWJ2xjjTMvO8x"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27309988e9d1da207c3528f53d6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0209988e9d1da207c3528f53d6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485109988e9d1da207c3528f53d6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0rjlBTxlkcd3aFoYS1HPCn" |> AlbumId
      , name = "Folge 83: Fußball-Diebe"
      , urlToOpen = "https://open.spotify.com/album/0rjlBTxlkcd3aFoYS1HPCn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734ed77c444dc4093549d15559" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024ed77c444dc4093549d15559"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514ed77c444dc4093549d15559"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5n6gdqMbunkR1J0MhqTaV8" |> AlbumId
      , name = "Folge 82: Die Delfin-Piraten"
      , urlToOpen = "https://open.spotify.com/album/5n6gdqMbunkR1J0MhqTaV8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f19cf89ed26ddd1875b019ef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f19cf89ed26ddd1875b019ef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f19cf89ed26ddd1875b019ef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3NOIKGCYKsL3nCCgzksldt" |> AlbumId
      , name = "Folge 81: Turbo-Rennen"
      , urlToOpen = "https://open.spotify.com/album/3NOIKGCYKsL3nCCgzksldt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730ce9634828f912a3e300d6cd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020ce9634828f912a3e300d6cd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510ce9634828f912a3e300d6cd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5EeUZitOFX7Nad5yp2CFud" |> AlbumId
      , name = "080/Gefährlicher Nebel"
      , urlToOpen = "https://open.spotify.com/album/5EeUZitOFX7Nad5yp2CFud"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732f78a5d30d5856957105c995" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022f78a5d30d5856957105c995"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512f78a5d30d5856957105c995"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5GOZBi4hHD6rvJI1zp7ryf" |> AlbumId
      , name = "079/Achtung, Abenteuer!"
      , urlToOpen = "https://open.spotify.com/album/5GOZBi4hHD6rvJI1zp7ryf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ea2c91abdc1ef6d436b3a61e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ea2c91abdc1ef6d436b3a61e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ea2c91abdc1ef6d436b3a61e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "15aFL9eaT1bjrURanvEKEn" |> AlbumId
      , name = "078/Schrottplatz in Gefahr"
      , urlToOpen = "https://open.spotify.com/album/15aFL9eaT1bjrURanvEKEn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734af1d18d20a87f49559a35f8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024af1d18d20a87f49559a35f8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514af1d18d20a87f49559a35f8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "75If2drFgUUJdC6eQ0dZYl" |> AlbumId
      , name = "077/Die Musikdiebe"
      , urlToOpen = "https://open.spotify.com/album/75If2drFgUUJdC6eQ0dZYl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27341d1a9421e0b0c8e9568fba0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0241d1a9421e0b0c8e9568fba0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485141d1a9421e0b0c8e9568fba0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6nSehzQCvelIRQu84k5N7E" |> AlbumId
      , name = "076/Blinde Passagiere"
      , urlToOpen = "https://open.spotify.com/album/6nSehzQCvelIRQu84k5N7E"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737b35f1912f7fe1e1ee325a03" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027b35f1912f7fe1e1ee325a03"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517b35f1912f7fe1e1ee325a03"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4M3VGzWy7xxm93zGw0xqAU" |> AlbumId
      , name = "075/Der Fußball-Roboter"
      , urlToOpen = "https://open.spotify.com/album/4M3VGzWy7xxm93zGw0xqAU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a2fb4748ffdd348d9466fe02" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a2fb4748ffdd348d9466fe02"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a2fb4748ffdd348d9466fe02"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7KEMmRYdYTyOkHaoocjwp7" |> AlbumId
      , name = "074/Das Schienen-Monster"
      , urlToOpen = "https://open.spotify.com/album/7KEMmRYdYTyOkHaoocjwp7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e9a09c4f0a0a8ecb4c19b095" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e9a09c4f0a0a8ecb4c19b095"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e9a09c4f0a0a8ecb4c19b095"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7JrHsowbMVguSku3JG2tLS" |> AlbumId
      , name = "073/Surfstrand in Gefahr"
      , urlToOpen = "https://open.spotify.com/album/7JrHsowbMVguSku3JG2tLS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a71f1d96f3d83e362aa47072" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a71f1d96f3d83e362aa47072"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a71f1d96f3d83e362aa47072"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0xynCTUxYMlBA1IcPfAgKq" |> AlbumId
      , name = "072/Die Laser-Falle"
      , urlToOpen = "https://open.spotify.com/album/0xynCTUxYMlBA1IcPfAgKq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bf0d49278a5379ed3f38c81c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bf0d49278a5379ed3f38c81c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bf0d49278a5379ed3f38c81c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0tuslnSb2vi63lqnROhlSl" |> AlbumId
      , name = "Adventskalender - 24 Tage im Weihnachtszirkus"
      , urlToOpen = "https://open.spotify.com/album/0tuslnSb2vi63lqnROhlSl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737a5764d903735d7e97e5f43b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027a5764d903735d7e97e5f43b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517a5764d903735d7e97e5f43b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1RrOzTtLYceG05edrb7YNQ" |> AlbumId
      , name = "071/Tatort Trampolin"
      , urlToOpen = "https://open.spotify.com/album/1RrOzTtLYceG05edrb7YNQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273afbb4e9559ad3183d112116f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02afbb4e9559ad3183d112116f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851afbb4e9559ad3183d112116f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1ntNbHEo93jDj2JgZtLMrS" |> AlbumId
      , name = "070/Aufbruch ins All"
      , urlToOpen = "https://open.spotify.com/album/1ntNbHEo93jDj2JgZtLMrS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273114126e610c1e7301a93e882" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02114126e610c1e7301a93e882"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851114126e610c1e7301a93e882"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6QpCsN1do9sWdzxMzP6vAm" |> AlbumId
      , name = "069/Die Rätselfalle"
      , urlToOpen = "https://open.spotify.com/album/6QpCsN1do9sWdzxMzP6vAm"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27381fa18a8804b8b02731945e1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0281fa18a8804b8b02731945e1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485181fa18a8804b8b02731945e1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0zDRwoqvJYhvfhcvQYzfcZ" |> AlbumId
      , name = "068/Chaos im Dunkeln"
      , urlToOpen = "https://open.spotify.com/album/0zDRwoqvJYhvfhcvQYzfcZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736972e5f163f3376e24d05017" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026972e5f163f3376e24d05017"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516972e5f163f3376e24d05017"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5qvokPibHLO3e47oV4wyhz" |> AlbumId
      , name = "067/Der goldene Drache"
      , urlToOpen = "https://open.spotify.com/album/5qvokPibHLO3e47oV4wyhz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a2bf2e257a27ce92fe0945b6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a2bf2e257a27ce92fe0945b6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a2bf2e257a27ce92fe0945b6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6xSlKWjaEpc6SMJ69uVKYT" |> AlbumId
      , name = "066/Geheimnis im Meer"
      , urlToOpen = "https://open.spotify.com/album/6xSlKWjaEpc6SMJ69uVKYT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273524bc84639b04c3b2e7bbf51" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02524bc84639b04c3b2e7bbf51"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851524bc84639b04c3b2e7bbf51"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Pg0kbjNl7PC22ghcSqKih" |> AlbumId
      , name = "Adventskalender"
      , urlToOpen = "https://open.spotify.com/album/0Pg0kbjNl7PC22ghcSqKih"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739547c11b4f57252c1ae76be0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029547c11b4f57252c1ae76be0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519547c11b4f57252c1ae76be0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4ErYqkUdfkAmsgltEPJKH7" |> AlbumId
      , name = "065/Mission Goldhund"
      , urlToOpen = "https://open.spotify.com/album/4ErYqkUdfkAmsgltEPJKH7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735a66ef1673945efe895eed1a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025a66ef1673945efe895eed1a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515a66ef1673945efe895eed1a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Om3zELCMatFreSN4FMeOG" |> AlbumId
      , name = "064/In der Schatzhöhle"
      , urlToOpen = "https://open.spotify.com/album/6Om3zELCMatFreSN4FMeOG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273471176cec591137f97f2cec3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02471176cec591137f97f2cec3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851471176cec591137f97f2cec3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "39QjW5XIE81HsWRjjyaVH0" |> AlbumId
      , name = "063/Monster-Wolken"
      , urlToOpen = "https://open.spotify.com/album/39QjW5XIE81HsWRjjyaVH0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e59b2c9c816a5e948aaa15ce" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e59b2c9c816a5e948aaa15ce"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e59b2c9c816a5e948aaa15ce"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3KD5QNC2k1328SsuYFIjiq" |> AlbumId
      , name = "062/Gefahr im Dschungel"
      , urlToOpen = "https://open.spotify.com/album/3KD5QNC2k1328SsuYFIjiq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27360e3945f0743e9901f309b8c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0260e3945f0743e9901f309b8c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485160e3945f0743e9901f309b8c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2ZQKn9GVeJalLEuh3BvuOB" |> AlbumId
      , name = "061/Alarm im Dino-Park"
      , urlToOpen = "https://open.spotify.com/album/2ZQKn9GVeJalLEuh3BvuOB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27370687f58b2e826d0aad6a69b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0270687f58b2e826d0aad6a69b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485170687f58b2e826d0aad6a69b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5XKW97txqaNv82dIUDWf6D" |> AlbumId
      , name = "060/Gespensterjagd"
      , urlToOpen = "https://open.spotify.com/album/5XKW97txqaNv82dIUDWf6D"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e6c60a44f3efed3f8975421b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e6c60a44f3efed3f8975421b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e6c60a44f3efed3f8975421b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "66YZOif5ogyl1O0rFT28HM" |> AlbumId
      , name = "059/Fußballhelden"
      , urlToOpen = "https://open.spotify.com/album/66YZOif5ogyl1O0rFT28HM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fcf5fe0d2e1b2fba4556f423" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fcf5fe0d2e1b2fba4556f423"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fcf5fe0d2e1b2fba4556f423"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2KpYeQgAWPq3skEUb1A8qb" |> AlbumId
      , name = "058/Spur des Drachen"
      , urlToOpen = "https://open.spotify.com/album/2KpYeQgAWPq3skEUb1A8qb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27377fb91113e71b40d0971b8d7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0277fb91113e71b40d0971b8d7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485177fb91113e71b40d0971b8d7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "23RIS8PEXnZUs0AwqmstMS" |> AlbumId
      , name = "057/Der Weihnachtsdieb"
      , urlToOpen = "https://open.spotify.com/album/23RIS8PEXnZUs0AwqmstMS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732ac6e611c31d824c35c46575" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022ac6e611c31d824c35c46575"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512ac6e611c31d824c35c46575"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0zmK2RPZSiThN6xwxDFNrL" |> AlbumId
      , name = "056/Das Rätsel der Könige"
      , urlToOpen = "https://open.spotify.com/album/0zmK2RPZSiThN6xwxDFNrL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733b5f101159170219a3bda6b3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023b5f101159170219a3bda6b3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513b5f101159170219a3bda6b3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2UNXd8SieHWtTM5g0VMeGv" |> AlbumId
      , name = "055/Der schwarze Joker"
      , urlToOpen = "https://open.spotify.com/album/2UNXd8SieHWtTM5g0VMeGv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738b43f3723a260ac6d516f8c1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028b43f3723a260ac6d516f8c1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518b43f3723a260ac6d516f8c1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4bM4QL65khBjHgvAEW1glL" |> AlbumId
      , name = "054/Zombie-Alarm"
      , urlToOpen = "https://open.spotify.com/album/4bM4QL65khBjHgvAEW1glL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27377d4691e0746fb37320f9bca" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0277d4691e0746fb37320f9bca"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485177d4691e0746fb37320f9bca"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4SVQrvQkXzYC1nU7DfDJx2" |> AlbumId
      , name = "Adventskalender - Ein Rätsel in 24 Tagen"
      , urlToOpen = "https://open.spotify.com/album/4SVQrvQkXzYC1nU7DfDJx2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27301159baf0f3774e2e8a7d87f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0201159baf0f3774e2e8a7d87f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485101159baf0f3774e2e8a7d87f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7d8GIfIRWUNIZZXc5bjsrT" |> AlbumId
      , name = "Adventskalender - 24 Tage im Weihnachtsland"
      , urlToOpen = "https://open.spotify.com/album/7d8GIfIRWUNIZZXc5bjsrT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737a8d774bfa80d91f97ad0af8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027a8d774bfa80d91f97ad0af8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517a8d774bfa80d91f97ad0af8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ahySlDFUrzxatkaJUC2hV" |> AlbumId
      , name = "053/Geheimnis der Tiere"
      , urlToOpen = "https://open.spotify.com/album/3ahySlDFUrzxatkaJUC2hV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27361bb72e92694f2e9d36219fb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0261bb72e92694f2e9d36219fb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485161bb72e92694f2e9d36219fb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6g5MSdVTrKY3f1ZzsqUhXw" |> AlbumId
      , name = "052/Mächtige Magier"
      , urlToOpen = "https://open.spotify.com/album/6g5MSdVTrKY3f1ZzsqUhXw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b918b08449e2d13bb54ab5c4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b918b08449e2d13bb54ab5c4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b918b08449e2d13bb54ab5c4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Vu69KfWoS6eAzwnhqssWk" |> AlbumId
      , name = "051/Tatort Kletterpark"
      , urlToOpen = "https://open.spotify.com/album/2Vu69KfWoS6eAzwnhqssWk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d292bef65c720423a922af66" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d292bef65c720423a922af66"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d292bef65c720423a922af66"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7zUg7xSxAAkwntDiX1yhGJ" |> AlbumId
      , name = "050/Schatz der Piraten"
      , urlToOpen = "https://open.spotify.com/album/7zUg7xSxAAkwntDiX1yhGJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273985849157addc6243e77e6f3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02985849157addc6243e77e6f3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851985849157addc6243e77e6f3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "105UQAEjLpiqUCUK6x6i3g" |> AlbumId
      , name = "048/Tanz der Skelette"
      , urlToOpen = "https://open.spotify.com/album/105UQAEjLpiqUCUK6x6i3g"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c276e1e6a3b1efad416cd692" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c276e1e6a3b1efad416cd692"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c276e1e6a3b1efad416cd692"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "42cBTxTbzCzbYm0sd4VUxU" |> AlbumId
      , name = "047/Falsche Fußball-Freunde"
      , urlToOpen = "https://open.spotify.com/album/42cBTxTbzCzbYm0sd4VUxU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739f74ad497ed8a48b81143fbd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029f74ad497ed8a48b81143fbd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519f74ad497ed8a48b81143fbd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6eQDj0n1wU2dEXO7vr1Bmm" |> AlbumId
      , name = "046/Jagd auf das Dino-Ei"
      , urlToOpen = "https://open.spotify.com/album/6eQDj0n1wU2dEXO7vr1Bmm"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27387933e865bff365b57d80aa6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0287933e865bff365b57d80aa6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485187933e865bff365b57d80aa6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Al8xe9LlMxHWhIddbienL" |> AlbumId
      , name = "045/Ein Fall für Superhelden"
      , urlToOpen = "https://open.spotify.com/album/4Al8xe9LlMxHWhIddbienL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738cf20611b5f0e2749ecae9dc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028cf20611b5f0e2749ecae9dc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518cf20611b5f0e2749ecae9dc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5fIxmzKdFvtbRIeRBEeptA" |> AlbumId
      , name = "044/Monster in Rocky Beach"
      , urlToOpen = "https://open.spotify.com/album/5fIxmzKdFvtbRIeRBEeptA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c0e2b002e3b50e8b49db071a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c0e2b002e3b50e8b49db071a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c0e2b002e3b50e8b49db071a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5J0AsPaix5KTMNjTFpj624" |> AlbumId
      , name = "043/Duell der Ritter"
      , urlToOpen = "https://open.spotify.com/album/5J0AsPaix5KTMNjTFpj624"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732cd0a447c965c5c6b825eed0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022cd0a447c965c5c6b825eed0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512cd0a447c965c5c6b825eed0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6sS4r99PFfzH6Gxc1Z3evg" |> AlbumId
      , name = "042/Fußballgötter"
      , urlToOpen = "https://open.spotify.com/album/6sS4r99PFfzH6Gxc1Z3evg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739a1e011f3bdc73aa383db17f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029a1e011f3bdc73aa383db17f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519a1e011f3bdc73aa383db17f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ixBUKtl7HtxSZECC3YnNb" |> AlbumId
      , name = "041/Insel der Haie"
      , urlToOpen = "https://open.spotify.com/album/3ixBUKtl7HtxSZECC3YnNb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273361f23cc9e1fb50df5f57c05" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02361f23cc9e1fb50df5f57c05"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851361f23cc9e1fb50df5f57c05"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "12IDORrv50mRmb7501PgiI" |> AlbumId
      , name = "040/Brennendes Eis"
      , urlToOpen = "https://open.spotify.com/album/12IDORrv50mRmb7501PgiI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273456f397e2b2b71395e3eeefd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02456f397e2b2b71395e3eeefd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851456f397e2b2b71395e3eeefd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6NkPN8kGJftA5ZURbZTKve" |> AlbumId
      , name = "039/Der verrückte Erfinder"
      , urlToOpen = "https://open.spotify.com/album/6NkPN8kGJftA5ZURbZTKve"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f8ce1bbb4ebaf721fbe8e9e6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f8ce1bbb4ebaf721fbe8e9e6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f8ce1bbb4ebaf721fbe8e9e6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7o6y1qwFIJolo0ZKUpPTR9" |> AlbumId
      , name = "038/Stunde der Wahrheit"
      , urlToOpen = "https://open.spotify.com/album/7o6y1qwFIJolo0ZKUpPTR9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b75b145f738a1e91bf9f3f2c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b75b145f738a1e91bf9f3f2c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b75b145f738a1e91bf9f3f2c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "24r6U8cWYIB4bQeMGhNB2Q" |> AlbumId
      , name = "037/Der Fluch der Indianer"
      , urlToOpen = "https://open.spotify.com/album/24r6U8cWYIB4bQeMGhNB2Q"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ac3a7e06c6f691cea0dc2e0b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ac3a7e06c6f691cea0dc2e0b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ac3a7e06c6f691cea0dc2e0b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6GUPPV35zx22eO4g9tctKN" |> AlbumId
      , name = "036/Mission Mars"
      , urlToOpen = "https://open.spotify.com/album/6GUPPV35zx22eO4g9tctKN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737f872297501bd203d824daf6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027f872297501bd203d824daf6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517f872297501bd203d824daf6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1bK1QqLOaESZgs2pXYY4J6" |> AlbumId
      , name = "035/Im Wilden Westen"
      , urlToOpen = "https://open.spotify.com/album/1bK1QqLOaESZgs2pXYY4J6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e443b137e1404a51cd715c56" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e443b137e1404a51cd715c56"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e443b137e1404a51cd715c56"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7ATza45Jb2B3MhSD0icgPi" |> AlbumId
      , name = "034/Falsches Gold"
      , urlToOpen = "https://open.spotify.com/album/7ATza45Jb2B3MhSD0icgPi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c1f9f753b20b48e82fed6ab4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c1f9f753b20b48e82fed6ab4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c1f9f753b20b48e82fed6ab4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5cJ4xmPFjEhOCQIBoYwmWi" |> AlbumId
      , name = "033/Nacht im Kerker"
      , urlToOpen = "https://open.spotify.com/album/5cJ4xmPFjEhOCQIBoYwmWi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27374f060a34ff5f5d029254b38" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0274f060a34ff5f5d029254b38"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485174f060a34ff5f5d029254b38"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3UzZjgfXxnjPigAfCYQCr5" |> AlbumId
      , name = "032/Die Gruselfalle"
      , urlToOpen = "https://open.spotify.com/album/3UzZjgfXxnjPigAfCYQCr5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aadef40886ceec7f21f1e45a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aadef40886ceec7f21f1e45a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aadef40886ceec7f21f1e45a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "49GuQzqAa08WMB8fjtEBj4" |> AlbumId
      , name = "031/Rückkehr der Saurier"
      , urlToOpen = "https://open.spotify.com/album/49GuQzqAa08WMB8fjtEBj4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738580a1bb3b7375baf452547b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028580a1bb3b7375baf452547b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518580a1bb3b7375baf452547b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5Dlq8pYslsD1dstLQR7NFw" |> AlbumId
      , name = "030/Im Geisterschiff"
      , urlToOpen = "https://open.spotify.com/album/5Dlq8pYslsD1dstLQR7NFw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fca6edf9e29235c7bfa6f226" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fca6edf9e29235c7bfa6f226"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fca6edf9e29235c7bfa6f226"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4fIWqTa6s849HB2NInOgyF" |> AlbumId
      , name = "029/Monsterpilze"
      , urlToOpen = "https://open.spotify.com/album/4fIWqTa6s849HB2NInOgyF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731192c2a856f8592dd1a6db9a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021192c2a856f8592dd1a6db9a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511192c2a856f8592dd1a6db9a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4BTfGkg67lPD7pnV9YABGC" |> AlbumId
      , name = "028/Diamantenjagd"
      , urlToOpen = "https://open.spotify.com/album/4BTfGkg67lPD7pnV9YABGC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bf99590d6c6432c286517813" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bf99590d6c6432c286517813"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bf99590d6c6432c286517813"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0BiK4U6FaICuYqpUQ553Qo" |> AlbumId
      , name = "027/Die Schokofalle"
      , urlToOpen = "https://open.spotify.com/album/0BiK4U6FaICuYqpUQ553Qo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273394fe0cfa0f07bde1a024816" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02394fe0cfa0f07bde1a024816"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851394fe0cfa0f07bde1a024816"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7zlnjYjJotwmyxPWee0s9W" |> AlbumId
      , name = "026/Fußball-Alarm"
      , urlToOpen = "https://open.spotify.com/album/7zlnjYjJotwmyxPWee0s9W"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e79e919801a43249e08443d0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e79e919801a43249e08443d0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e79e919801a43249e08443d0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5nCCuIqR5MsRi3tI90Vu4T" |> AlbumId
      , name = "025/In letzter Sekunde"
      , urlToOpen = "https://open.spotify.com/album/5nCCuIqR5MsRi3tI90Vu4T"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fef74e7276d071978640f04c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fef74e7276d071978640f04c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fef74e7276d071978640f04c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1GsVIL0B05ykaxM0sjjik8" |> AlbumId
      , name = "024/Im Bann des Zauberers"
      , urlToOpen = "https://open.spotify.com/album/1GsVIL0B05ykaxM0sjjik8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27311eb8a5b14af27e82480e9ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0211eb8a5b14af27e82480e9ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485111eb8a5b14af27e82480e9ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1cCB23DWt7mRHBFvTsX87C" |> AlbumId
      , name = "049/Der singende Geist"
      , urlToOpen = "https://open.spotify.com/album/1cCB23DWt7mRHBFvTsX87C"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730932a0708b098ae5623034a3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020932a0708b098ae5623034a3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510932a0708b098ae5623034a3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5PEjckgsqkxbpDlgz30wTk" |> AlbumId
      , name = "023/Feuer in Rocky Beach"
      , urlToOpen = "https://open.spotify.com/album/5PEjckgsqkxbpDlgz30wTk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a63e6b5a3cd67a151c5ecc67" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a63e6b5a3cd67a151c5ecc67"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a63e6b5a3cd67a151c5ecc67"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2ILrLgqLA1pterp2pZoChc" |> AlbumId
      , name = "022/Einarmige Banditen"
      , urlToOpen = "https://open.spotify.com/album/2ILrLgqLA1pterp2pZoChc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ec590be3a8ce4a01b2744290" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ec590be3a8ce4a01b2744290"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ec590be3a8ce4a01b2744290"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3sMdBpUspSRJxhr2oze3le" |> AlbumId
      , name = "021/Die Geisterjäger"
      , urlToOpen = "https://open.spotify.com/album/3sMdBpUspSRJxhr2oze3le"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aff9ac46c4253d03575a9911" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aff9ac46c4253d03575a9911"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aff9ac46c4253d03575a9911"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0WwfV73hIbVsEfIUJxFCMN" |> AlbumId
      , name = "020/Die Schmugglerinsel"
      , urlToOpen = "https://open.spotify.com/album/0WwfV73hIbVsEfIUJxFCMN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273223b6839f90855c098455e81" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02223b6839f90855c098455e81"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851223b6839f90855c098455e81"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5NmTdnYuPpnDlF9zBTnwHT" |> AlbumId
      , name = "019/Spur in die Wildnis"
      , urlToOpen = "https://open.spotify.com/album/5NmTdnYuPpnDlF9zBTnwHT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fbed0f6c99c1ddb5a3de3bf0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fbed0f6c99c1ddb5a3de3bf0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fbed0f6c99c1ddb5a3de3bf0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5Z6HPLDixzbX8TNK889Fr8" |> AlbumId
      , name = "018/Mission Maulwurf"
      , urlToOpen = "https://open.spotify.com/album/5Z6HPLDixzbX8TNK889Fr8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f16e3e0914eda3b1c0b27435" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f16e3e0914eda3b1c0b27435"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f16e3e0914eda3b1c0b27435"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2RJHP6Kw1jZrp56WCqtiQW" |> AlbumId
      , name = "017/Rettet Atlantis!"
      , urlToOpen = "https://open.spotify.com/album/2RJHP6Kw1jZrp56WCqtiQW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ce8c101375618001ba6588de" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ce8c101375618001ba6588de"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ce8c101375618001ba6588de"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2xo9X40JoJuDO64Iy5mpNY" |> AlbumId
      , name = "016/Der magische Brunnen"
      , urlToOpen = "https://open.spotify.com/album/2xo9X40JoJuDO64Iy5mpNY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ff5d0b75f33fbee81d58f40a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ff5d0b75f33fbee81d58f40a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ff5d0b75f33fbee81d58f40a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3Dn23cUQU7RehW7QeBt3cJ" |> AlbumId
      , name = "015/In der Geisterstadt"
      , urlToOpen = "https://open.spotify.com/album/3Dn23cUQU7RehW7QeBt3cJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d3e02b09cbbf796eadd00d35" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d3e02b09cbbf796eadd00d35"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d3e02b09cbbf796eadd00d35"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1WTFQcnnJZRhRLkA6Pemom" |> AlbumId
      , name = "014/Gefahr aus dem All"
      , urlToOpen = "https://open.spotify.com/album/1WTFQcnnJZRhRLkA6Pemom"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa7d6b3255b2d9455ba1b363" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa7d6b3255b2d9455ba1b363"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa7d6b3255b2d9455ba1b363"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7xFfmSVyP8y9gcXRPG7xmT" |> AlbumId
      , name = "013/Im Reich der Rätsel"
      , urlToOpen = "https://open.spotify.com/album/7xFfmSVyP8y9gcXRPG7xmT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273369263e27ea131e478d9d6dd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02369263e27ea131e478d9d6dd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851369263e27ea131e478d9d6dd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3aYsZOOX3BVsCcHC0MQq3f" |> AlbumId
      , name = "012/Internetpiraten"
      , urlToOpen = "https://open.spotify.com/album/3aYsZOOX3BVsCcHC0MQq3f"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e81ac99bc15871f625fdcceb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e81ac99bc15871f625fdcceb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e81ac99bc15871f625fdcceb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6GPxCYDZkEqCLPc7BeCFYb" |> AlbumId
      , name = "011/Fluch des Goldes"
      , urlToOpen = "https://open.spotify.com/album/6GPxCYDZkEqCLPc7BeCFYb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f59681b7755f4bc0ed79e661" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f59681b7755f4bc0ed79e661"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f59681b7755f4bc0ed79e661"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6PRRmyf0vuFwPeuVLdDq4q" |> AlbumId
      , name = "010/Spuk in Rocky Beach"
      , urlToOpen = "https://open.spotify.com/album/6PRRmyf0vuFwPeuVLdDq4q"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732d2d56cf42e8669f3d4a5837" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022d2d56cf42e8669f3d4a5837"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512d2d56cf42e8669f3d4a5837"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7A5GQZrirxYgjWCTGpbnbs" |> AlbumId
      , name = "009/SOS über den Wolken"
      , urlToOpen = "https://open.spotify.com/album/7A5GQZrirxYgjWCTGpbnbs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734c1c2ac7bef7269f27eecbc3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024c1c2ac7bef7269f27eecbc3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514c1c2ac7bef7269f27eecbc3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3RRqQIyDs7AkO3TPbmuRpt" |> AlbumId
      , name = "008/Nacht unter Wölfen"
      , urlToOpen = "https://open.spotify.com/album/3RRqQIyDs7AkO3TPbmuRpt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735c7f65e95f2d2f3e0b85b2df" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025c7f65e95f2d2f3e0b85b2df"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515c7f65e95f2d2f3e0b85b2df"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2rleLzoiSWt5IVyZpkkVHA" |> AlbumId
      , name = "007/Gruft der Piraten"
      , urlToOpen = "https://open.spotify.com/album/2rleLzoiSWt5IVyZpkkVHA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dfd8b8cc826b1b02de8a6cc5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dfd8b8cc826b1b02de8a6cc5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dfd8b8cc826b1b02de8a6cc5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4TSPWdUo2J4w6VuwQgUK2e" |> AlbumId
      , name = "006/Gefahr im Gruselgarten"
      , urlToOpen = "https://open.spotify.com/album/4TSPWdUo2J4w6VuwQgUK2e"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737d655efcd6acea1b902caf4a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027d655efcd6acea1b902caf4a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517d655efcd6acea1b902caf4a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1wNy1x9hCcnmU1vhT7S2Tc" |> AlbumId
      , name = "005/Flucht in die Zukunft"
      , urlToOpen = "https://open.spotify.com/album/1wNy1x9hCcnmU1vhT7S2Tc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733fd64dd83c0d3a7fe3370a60" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023fd64dd83c0d3a7fe3370a60"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513fd64dd83c0d3a7fe3370a60"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "30w9IzSbHHevllaU299TMh" |> AlbumId
      , name = "004/Chaos vor der Kamera"
      , urlToOpen = "https://open.spotify.com/album/30w9IzSbHHevllaU299TMh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27370c7c26dc7a1b152b581cf23" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0270c7c26dc7a1b152b581cf23"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485170c7c26dc7a1b152b581cf23"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0jhxRM2HsImXg5W28JfUv8" |> AlbumId
      , name = "003/Invasion der Fliegen"
      , urlToOpen = "https://open.spotify.com/album/0jhxRM2HsImXg5W28JfUv8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730d9e068defeb50399324e50e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020d9e068defeb50399324e50e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510d9e068defeb50399324e50e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "50d2KMK7GtbCTfLqxDfHIS" |> AlbumId
      , name = "002/Radio Rocky Beach"
      , urlToOpen = "https://open.spotify.com/album/50d2KMK7GtbCTfLqxDfHIS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ecf6240d0429ec8069380d8a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ecf6240d0429ec8069380d8a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ecf6240d0429ec8069380d8a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5mQg8r5ivI0IX5bTV57KyN" |> AlbumId
      , name = "001/Panik im Paradies"
      , urlToOpen = "https://open.spotify.com/album/5mQg8r5ivI0IX5bTV57KyN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735cffe8a80b9933f9164d7a54" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025cffe8a80b9933f9164d7a54"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515cffe8a80b9933f9164d7a54"
              , width = 64 
              , height = 64 
              }
            ]
      }
    ] |> Array.fromList
