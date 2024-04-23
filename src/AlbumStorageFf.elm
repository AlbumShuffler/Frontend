module AlbumStorageFf exposing ( albumStorage, artistInfo )

import Array exposing(Array)
import Albums exposing (Album, ArtistInfo)
import ArtistIds exposing (ArtistId(..))
import AlbumIds exposing (AlbumId(..))

artistInfo : ArtistInfo
artistInfo =
  { id = "1hD52edfn6aNsK3fb5c2OT" |> ArtistId
  , name = "Fünf Freunde" 
  , imageUrl = "https://i.scdn.co/image/ab6761610000e5ebfd1fc9ff3040cfb38d7225ac" 
  , shortName = "FF"
  , httpFriendlyShortName = "ff"
  , icon = "img/ff_transparent.png"
  , coverColorA = "#666666"
  , coverColorB = "#AAAAAA"
  }


albumStorage : Array Album
albumStorage =
    [ { id = "7Kqd2LwNPvAYUHqlDXiEwa" |> AlbumId
      , name = "Folge 159: und das riesige Reptil"
      , urlToOpen = "https://open.spotify.com/album/7Kqd2LwNPvAYUHqlDXiEwa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa8715993b6fdac18d751d04"
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa8715993b6fdac18d751d04"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa8715993b6fdac18d751d04"
              , width = 64 
              , height = 64 
              }
            ] }
    , { id = "0ZilG3oZQo0c23WQlVAllp" |> AlbumId
      , name = "Folge 158: und das verlorene Maß"
      , urlToOpen = "https://open.spotify.com/album/0ZilG3oZQo0c23WQlVAllp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736dabb27eacd258503558c7fa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026dabb27eacd258503558c7fa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516dabb27eacd258503558c7fa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7rSCIhERMraymP4Ci5whK5" |> AlbumId
      , name = "Folge 157: und das seltsame Haus in der Schlucht"
      , urlToOpen = "https://open.spotify.com/album/7rSCIhERMraymP4Ci5whK5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737df45792915ae4b97cd91691" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027df45792915ae4b97cd91691"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517df45792915ae4b97cd91691"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Zn3Tstqsf6H3JG4AdqoQH" |> AlbumId
      , name = "Folge 156: und die verlassene Villa"
      , urlToOpen = "https://open.spotify.com/album/2Zn3Tstqsf6H3JG4AdqoQH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273faa4606d45e68ce4620d51ef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02faa4606d45e68ce4620d51ef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851faa4606d45e68ce4620d51ef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6aMVk0x5m36k6WK1MsJ97R" |> AlbumId
      , name = "Folge 155: und das Erbe der Lady Thornton"
      , urlToOpen = "https://open.spotify.com/album/6aMVk0x5m36k6WK1MsJ97R"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738c7bb774491b693d31a03a4c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028c7bb774491b693d31a03a4c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518c7bb774491b693d31a03a4c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2DMgS6HtLTrTowuUaLlEN2" |> AlbumId
      , name = "Folge 154: und die Geheimbotschaft in der Ruine"
      , urlToOpen = "https://open.spotify.com/album/2DMgS6HtLTrTowuUaLlEN2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b46cfa707bda3074ead13431" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b46cfa707bda3074ead13431"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b46cfa707bda3074ead13431"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ZacPvwuH9jZze5p9I5rBL" |> AlbumId
      , name = "Folge 153: und der weiße Hai"
      , urlToOpen = "https://open.spotify.com/album/3ZacPvwuH9jZze5p9I5rBL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27322d83a4ee5624001ed4008d4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0222d83a4ee5624001ed4008d4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485122d83a4ee5624001ed4008d4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6wgnQKNX26heGTGrvZV95p" |> AlbumId
      , name = "Folge 152: und das Geheimnis der Kelly Brüder"
      , urlToOpen = "https://open.spotify.com/album/6wgnQKNX26heGTGrvZV95p"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738e97f79db69b22a01fb18333" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028e97f79db69b22a01fb18333"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518e97f79db69b22a01fb18333"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2p3j8JvKKwO0D5D3UU05Ou" |> AlbumId
      , name = "Folge 151: und das unterirdische Versteck"
      , urlToOpen = "https://open.spotify.com/album/2p3j8JvKKwO0D5D3UU05Ou"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b00cf55a137032eb01e4be75" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b00cf55a137032eb01e4be75"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b00cf55a137032eb01e4be75"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "663itkaq3LIGH2C6qYS5F4" |> AlbumId
      , name = "Folge 150: und der Verrat auf dem Hausboot"
      , urlToOpen = "https://open.spotify.com/album/663itkaq3LIGH2C6qYS5F4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733af5e7aacf515dd1bd57d4b8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023af5e7aacf515dd1bd57d4b8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513af5e7aacf515dd1bd57d4b8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5OFleTDaNNHpMEuFGl1oeD" |> AlbumId
      , name = "Folge 149: und der Schatz in der Drachenschlucht"
      , urlToOpen = "https://open.spotify.com/album/5OFleTDaNNHpMEuFGl1oeD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c7134d87735ddad87110527f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c7134d87735ddad87110527f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c7134d87735ddad87110527f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3KlFZkxeOGOyRe7BeyoBDS" |> AlbumId
      , name = "Folge 148: und die Lichter in der Niemandsbucht"
      , urlToOpen = "https://open.spotify.com/album/3KlFZkxeOGOyRe7BeyoBDS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c6bd86a1e2405ac277063de4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c6bd86a1e2405ac277063de4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c6bd86a1e2405ac277063de4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0wQETnTMpsQGqTYi6bzS8o" |> AlbumId
      , name = "Folge 147: und das unheimliche Dorf im See"
      , urlToOpen = "https://open.spotify.com/album/0wQETnTMpsQGqTYi6bzS8o"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734efe6096f8e5b11badfcc3c0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024efe6096f8e5b11badfcc3c0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514efe6096f8e5b11badfcc3c0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1LBl7Q25TbtHtD6bJGX7Tn" |> AlbumId
      , name = "Folge 146: und die verdächtige Fahrradbotin"
      , urlToOpen = "https://open.spotify.com/album/1LBl7Q25TbtHtD6bJGX7Tn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736d1142c43365debd0ec6ec00" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026d1142c43365debd0ec6ec00"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516d1142c43365debd0ec6ec00"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1MSUqIRZ02rYLly5YOsVYQ" |> AlbumId
      , name = "Adventskalender - Fünf Freunde und das Abenteuer im Wald"
      , urlToOpen = "https://open.spotify.com/album/1MSUqIRZ02rYLly5YOsVYQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27313c5a7f568ddf7508ada9be1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0213c5a7f568ddf7508ada9be1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485113c5a7f568ddf7508ada9be1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4pxQKdeE98Vyg8dVjKsMC6" |> AlbumId
      , name = "Folge 145: und die Suche nach dem Mondgestein"
      , urlToOpen = "https://open.spotify.com/album/4pxQKdeE98Vyg8dVjKsMC6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f839688ca8ed26cf721c8ad3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f839688ca8ed26cf721c8ad3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f839688ca8ed26cf721c8ad3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1fx1KSS14TS3bqYRk8Dzqj" |> AlbumId
      , name = "Folge 144: und die große Meuterei"
      , urlToOpen = "https://open.spotify.com/album/1fx1KSS14TS3bqYRk8Dzqj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735687c8a04a2ddabfb5b7ff1b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025687c8a04a2ddabfb5b7ff1b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515687c8a04a2ddabfb5b7ff1b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0HQSazMxcRgtiP3HmQK8sQ" |> AlbumId
      , name = "Folge 143: und die verschwundene Riesenschildkröte"
      , urlToOpen = "https://open.spotify.com/album/0HQSazMxcRgtiP3HmQK8sQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27328a30b558cca6d32dc8ad639" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0228a30b558cca6d32dc8ad639"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485128a30b558cca6d32dc8ad639"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7dgAjR8rW0xv0knBYJlqVP" |> AlbumId
      , name = "Folge 142: und der mysteriöse Dieb"
      , urlToOpen = "https://open.spotify.com/album/7dgAjR8rW0xv0knBYJlqVP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739972095ba1d1d802a5ab970b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029972095ba1d1d802a5ab970b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519972095ba1d1d802a5ab970b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4WbOKUvwd1d8fi1cRRxMXJ" |> AlbumId
      , name = "Folge 141: und das rätselhafte Spukhaus"
      , urlToOpen = "https://open.spotify.com/album/4WbOKUvwd1d8fi1cRRxMXJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f6321e4995ac9f52d2722a48" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f6321e4995ac9f52d2722a48"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f6321e4995ac9f52d2722a48"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1kabjjRCVKzJs8pkTOpFyS" |> AlbumId
      , name = "140/und das geheimnisvolle Licht"
      , urlToOpen = "https://open.spotify.com/album/1kabjjRCVKzJs8pkTOpFyS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273017e4bdb7b61693c6c5bb593" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02017e4bdb7b61693c6c5bb593"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851017e4bdb7b61693c6c5bb593"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2evSFTbb7Kj2EVN1HHo66J" |> AlbumId
      , name = "139/und die Geisterstadt"
      , urlToOpen = "https://open.spotify.com/album/2evSFTbb7Kj2EVN1HHo66J"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aa0e506a7da2a10f1d6f005e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aa0e506a7da2a10f1d6f005e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aa0e506a7da2a10f1d6f005e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2H46tTqNpMkpR55YN3TAc5" |> AlbumId
      , name = "138/am Ende der Welt"
      , urlToOpen = "https://open.spotify.com/album/2H46tTqNpMkpR55YN3TAc5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d52c1620a6b8811e3b39f703" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d52c1620a6b8811e3b39f703"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d52c1620a6b8811e3b39f703"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5yoGMEr5doaWJnTlmXfNVV" |> AlbumId
      , name = "137/und der Schokoladendieb von London"
      , urlToOpen = "https://open.spotify.com/album/5yoGMEr5doaWJnTlmXfNVV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ece3d53421d37fa727e5752c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ece3d53421d37fa727e5752c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ece3d53421d37fa727e5752c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "61tT5XI9GX40z31yexaoS8" |> AlbumId
      , name = "136/und der wütende Stier"
      , urlToOpen = "https://open.spotify.com/album/61tT5XI9GX40z31yexaoS8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737d549fd332b40720a76f411c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027d549fd332b40720a76f411c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517d549fd332b40720a76f411c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1XEcqpqo05AEb6geQhldoR" |> AlbumId
      , name = "135/und die verdächtige Ölfirma"
      , urlToOpen = "https://open.spotify.com/album/1XEcqpqo05AEb6geQhldoR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730d528287f1a77a30f272029b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020d528287f1a77a30f272029b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510d528287f1a77a30f272029b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6AN2eovtiP3NXkgcMfNt8k" |> AlbumId
      , name = "134/und die unheimliche Achterbahn"
      , urlToOpen = "https://open.spotify.com/album/6AN2eovtiP3NXkgcMfNt8k"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fe80ac5153fe605df2aca737" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fe80ac5153fe605df2aca737"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fe80ac5153fe605df2aca737"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6DOXgeV49OTiik0kUVppDL" |> AlbumId
      , name = "133/und der Esel in der Tropfsteinhöhle"
      , urlToOpen = "https://open.spotify.com/album/6DOXgeV49OTiik0kUVppDL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27352a77182f90f5378051310e7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0252a77182f90f5378051310e7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485152a77182f90f5378051310e7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5sOpvlONkSUPgi09ME8Gki" |> AlbumId
      , name = "132/und das Rätsel um den Stromausfall"
      , urlToOpen = "https://open.spotify.com/album/5sOpvlONkSUPgi09ME8Gki"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27342eee23490325e1acbc1bb34" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0242eee23490325e1acbc1bb34"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485142eee23490325e1acbc1bb34"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2TtW4W6HAHWbPcKrQd5x5y" |> AlbumId
      , name = "131/verfolgen die Fahrraddiebe"
      , urlToOpen = "https://open.spotify.com/album/2TtW4W6HAHWbPcKrQd5x5y"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738623d3f2d6fb0c23071a7e2d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028623d3f2d6fb0c23071a7e2d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518623d3f2d6fb0c23071a7e2d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Jee9XPRgwhGWe7SM6ISXd" |> AlbumId
      , name = "130/und die Glocke der Wikinger"
      , urlToOpen = "https://open.spotify.com/album/2Jee9XPRgwhGWe7SM6ISXd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ce68cb6b1f5fd1a60ee78881" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ce68cb6b1f5fd1a60ee78881"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ce68cb6b1f5fd1a60ee78881"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1wvCvWOhELxrXklMXcZM5D" |> AlbumId
      , name = "129/und die kleinen Detektive"
      , urlToOpen = "https://open.spotify.com/album/1wvCvWOhELxrXklMXcZM5D"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732406d1fa0412f69e8da23a73" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022406d1fa0412f69e8da23a73"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512406d1fa0412f69e8da23a73"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7yFFnG7vxrccj0pjLpOVSq" |> AlbumId
      , name = "128/und der unsichtbare Feind"
      , urlToOpen = "https://open.spotify.com/album/7yFFnG7vxrccj0pjLpOVSq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27340207481dece5040a07098ba" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0240207481dece5040a07098ba"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485140207481dece5040a07098ba"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3VAxpuOINfqGTBUnSyvPNF" |> AlbumId
      , name = "127/und die Teufelsbucht"
      , urlToOpen = "https://open.spotify.com/album/3VAxpuOINfqGTBUnSyvPNF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731e1a958f43d68ae99b2749ab" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021e1a958f43d68ae99b2749ab"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511e1a958f43d68ae99b2749ab"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3uTZGVVhXzJ3KU1ZBxPH6d" |> AlbumId
      , name = "126/und die gefährlichen Wurzeln"
      , urlToOpen = "https://open.spotify.com/album/3uTZGVVhXzJ3KU1ZBxPH6d"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ad28d07dd48cb1ad95615004" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ad28d07dd48cb1ad95615004"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ad28d07dd48cb1ad95615004"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2akmTQWswD0lQBMedOyhUU" |> AlbumId
      , name = "Fünf Freunde und das Tal der Dinosaurier - Das Original-Hörspiel zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/2akmTQWswD0lQBMedOyhUU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273451ee920c146ec99034f359c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02451ee920c146ec99034f359c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851451ee920c146ec99034f359c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7exgOwKsg2MuiHI4Pb5Ewv" |> AlbumId
      , name = "125/und die gemeine Falle"
      , urlToOpen = "https://open.spotify.com/album/7exgOwKsg2MuiHI4Pb5Ewv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739411a1ff7f6e45c208b5dca7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029411a1ff7f6e45c208b5dca7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519411a1ff7f6e45c208b5dca7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2MdUrlBdCIa6RanKfQTcv8" |> AlbumId
      , name = "124/auf der Suche nach Timmy"
      , urlToOpen = "https://open.spotify.com/album/2MdUrlBdCIa6RanKfQTcv8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b001d3f31e3d5e31b9954816" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b001d3f31e3d5e31b9954816"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b001d3f31e3d5e31b9954816"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6V5J8fOkRDDXxsxAHi0Ut4" |> AlbumId
      , name = "123/und der Zug im Dunkeln"
      , urlToOpen = "https://open.spotify.com/album/6V5J8fOkRDDXxsxAHi0Ut4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27342de123125064c65fab27ee0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0242de123125064c65fab27ee0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485142de123125064c65fab27ee0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0oX0xTrbf5mm6J9nTMQKGJ" |> AlbumId
      , name = "122/und der Großalarm in Kirrin"
      , urlToOpen = "https://open.spotify.com/album/0oX0xTrbf5mm6J9nTMQKGJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273960ce8779cedf1aa4297e7be" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02960ce8779cedf1aa4297e7be"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851960ce8779cedf1aa4297e7be"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2mH1pMOtZ0rPAHhQ8lnVex" |> AlbumId
      , name = "121/und die verlassene Jagdhütte"
      , urlToOpen = "https://open.spotify.com/album/2mH1pMOtZ0rPAHhQ8lnVex"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d28a9bf76dde887b38304cee" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d28a9bf76dde887b38304cee"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d28a9bf76dde887b38304cee"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4NllbPOq0cMAD4NQZ8NIEC" |> AlbumId
      , name = "120/und die doppelte Erfindung"
      , urlToOpen = "https://open.spotify.com/album/4NllbPOq0cMAD4NQZ8NIEC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b177e7c836f291b737b9e767" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b177e7c836f291b737b9e767"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b177e7c836f291b737b9e767"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "66yMv3N4xjf7yfx8xAFnjk" |> AlbumId
      , name = "119/und das versunkene Schiff"
      , urlToOpen = "https://open.spotify.com/album/66yMv3N4xjf7yfx8xAFnjk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27372194f196859f4e4f9c76e0c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0272194f196859f4e4f9c76e0c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485172194f196859f4e4f9c76e0c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2WkrFpSG4nZDMmlO58E6sD" |> AlbumId
      , name = "118/und der falsche Patient"
      , urlToOpen = "https://open.spotify.com/album/2WkrFpSG4nZDMmlO58E6sD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731563534a6cf308765703f916" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021563534a6cf308765703f916"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511563534a6cf308765703f916"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7m39uymt9bZuhztX8iRtjw" |> AlbumId
      , name = "117/und der Wolf in den Highlands"
      , urlToOpen = "https://open.spotify.com/album/7m39uymt9bZuhztX8iRtjw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27323d52640781f719a04a39266" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0223d52640781f719a04a39266"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485123d52640781f719a04a39266"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7qL5b8h2mQSNwIokYvHTcd" |> AlbumId
      , name = "116/und der chinesische Pflanzenzauber"
      , urlToOpen = "https://open.spotify.com/album/7qL5b8h2mQSNwIokYvHTcd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27348181ccc37bcb981d35fb469" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0248181ccc37bcb981d35fb469"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485148181ccc37bcb981d35fb469"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "19fDVxsjnraxX7EiyPaYrf" |> AlbumId
      , name = "115/helfen den Flutopfern"
      , urlToOpen = "https://open.spotify.com/album/19fDVxsjnraxX7EiyPaYrf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739fce96c6b45a4d9acd8c5b10" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029fce96c6b45a4d9acd8c5b10"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519fce96c6b45a4d9acd8c5b10"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0nPeO3y0Zf8aG5EAqxTFyR" |> AlbumId
      , name = "114/und der Skandal auf der Freilichtbühne"
      , urlToOpen = "https://open.spotify.com/album/0nPeO3y0Zf8aG5EAqxTFyR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273abcc5b8cbc770778b83a4fc5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02abcc5b8cbc770778b83a4fc5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851abcc5b8cbc770778b83a4fc5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4dcEoyqGRRV17uwsRByHG4" |> AlbumId
      , name = "113/und das Feuer auf der Felseninsel"
      , urlToOpen = "https://open.spotify.com/album/4dcEoyqGRRV17uwsRByHG4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27325f929147b5629feeb346618" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0225f929147b5629feeb346618"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485125f929147b5629feeb346618"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1NwFaXCdP89xzoFTmriE0l" |> AlbumId
      , name = "112/und der Delfin in der Felsenbucht"
      , urlToOpen = "https://open.spotify.com/album/1NwFaXCdP89xzoFTmriE0l"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c069537e7d21f6e013dd55c2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c069537e7d21f6e013dd55c2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c069537e7d21f6e013dd55c2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0YO812T6aOroGX98fT3bME" |> AlbumId
      , name = "111/und das Geheimverlies im Schloss"
      , urlToOpen = "https://open.spotify.com/album/0YO812T6aOroGX98fT3bME"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b56549b35f244dee74cf7df1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b56549b35f244dee74cf7df1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b56549b35f244dee74cf7df1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5sBbygDrYQfmrU7kMXUcZX" |> AlbumId
      , name = "110/auf dem Pfad der Küstenschmuggler"
      , urlToOpen = "https://open.spotify.com/album/5sBbygDrYQfmrU7kMXUcZX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d261b94aab579f7647c433e2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d261b94aab579f7647c433e2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d261b94aab579f7647c433e2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6DKW0i593WcqpKBl0xx2Zb" |> AlbumId
      , name = "04/Das Original-Hörspiel zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/6DKW0i593WcqpKBl0xx2Zb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b8ea25439c0e644a6fd84092" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b8ea25439c0e644a6fd84092"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b8ea25439c0e644a6fd84092"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5SN5o60yKKZTU2uuZNn5Dq" |> AlbumId
      , name = "109/und die mysteriöse Botschaft"
      , urlToOpen = "https://open.spotify.com/album/5SN5o60yKKZTU2uuZNn5Dq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738575945e4b7727a75953c176" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028575945e4b7727a75953c176"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518575945e4b7727a75953c176"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2McZvjpPKOHdb8Eu7Cu9vt" |> AlbumId
      , name = "108/und die Entführung im Skigebiet"
      , urlToOpen = "https://open.spotify.com/album/2McZvjpPKOHdb8Eu7Cu9vt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a23035d4a3eba1d0bd794673" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a23035d4a3eba1d0bd794673"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a23035d4a3eba1d0bd794673"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Hq1SKPJFP0g75PWisli8G" |> AlbumId
      , name = "107/und die Nacht im Safari-Park"
      , urlToOpen = "https://open.spotify.com/album/0Hq1SKPJFP0g75PWisli8G"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735b57d7ad305db82e2d1fa5cb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025b57d7ad305db82e2d1fa5cb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515b57d7ad305db82e2d1fa5cb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4RfwChkrM1deq4fad67E1a" |> AlbumId
      , name = "106/und das geheimnisvolle Polarschiff"
      , urlToOpen = "https://open.spotify.com/album/4RfwChkrM1deq4fad67E1a"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e1274c9bda46516d82a39716" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e1274c9bda46516d82a39716"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e1274c9bda46516d82a39716"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "48AuM6VSUHPR2Xk2Nmx3cu" |> AlbumId
      , name = "105/und das magische Spinnennetz"
      , urlToOpen = "https://open.spotify.com/album/48AuM6VSUHPR2Xk2Nmx3cu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bd847c666a9d2c8d23cdcb86" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bd847c666a9d2c8d23cdcb86"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bd847c666a9d2c8d23cdcb86"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1hM6Tv4HKwuRnGNbtN4lLz" |> AlbumId
      , name = "03/Das Original-Hörspiel zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/1hM6Tv4HKwuRnGNbtN4lLz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c9b7e0b02e72dc9be510a2e6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c9b7e0b02e72dc9be510a2e6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c9b7e0b02e72dc9be510a2e6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3z1g2zjc3aigQ1arAgQuF2" |> AlbumId
      , name = "104/und die Jagd nach der Diebesbande"
      , urlToOpen = "https://open.spotify.com/album/3z1g2zjc3aigQ1arAgQuF2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739cae42904f3071026d0a2ae4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029cae42904f3071026d0a2ae4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519cae42904f3071026d0a2ae4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5N7Dfn8jUp8SId7CybhP6Q" |> AlbumId
      , name = "103/und die giftigen Feuerquallen"
      , urlToOpen = "https://open.spotify.com/album/5N7Dfn8jUp8SId7CybhP6Q"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734c40239285926b84a5507850" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024c40239285926b84a5507850"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514c40239285926b84a5507850"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2cEEvRONOp9cLUYudoaO3i" |> AlbumId
      , name = "102/und die goldene Maske des Pharao"
      , urlToOpen = "https://open.spotify.com/album/2cEEvRONOp9cLUYudoaO3i"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a7c9b5b26cf3fe3d3f785a1b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a7c9b5b26cf3fe3d3f785a1b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a7c9b5b26cf3fe3d3f785a1b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6GpIAoh3k8slwVBsNHUqqX" |> AlbumId
      , name = "101/und der vergessene Schatz"
      , urlToOpen = "https://open.spotify.com/album/6GpIAoh3k8slwVBsNHUqqX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b9a46bc4cf62687919ccda49" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b9a46bc4cf62687919ccda49"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b9a46bc4cf62687919ccda49"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7MJOaVJijHPPdc7ERn6W3h" |> AlbumId
      , name = "100/und das Gorillakind in Gefahr"
      , urlToOpen = "https://open.spotify.com/album/7MJOaVJijHPPdc7ERn6W3h"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273182e2b8a40dac1efada17afe" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02182e2b8a40dac1efada17afe"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851182e2b8a40dac1efada17afe"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7GgmiV6ZH3yklTQpIrgQCC" |> AlbumId
      , name = "02/Das Original-Hörspiel zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/7GgmiV6ZH3yklTQpIrgQCC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273293872f31bb53e64095d7342" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02293872f31bb53e64095d7342"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851293872f31bb53e64095d7342"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1nFkBK73s1YS93ZWFRDbF5" |> AlbumId
      , name = "099/und der seltsame Leuchtturm"
      , urlToOpen = "https://open.spotify.com/album/1nFkBK73s1YS93ZWFRDbF5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739de5544821c1fb7950d9b11b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029de5544821c1fb7950d9b11b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519de5544821c1fb7950d9b11b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0cX49g0wBtvDryEyU5FhwA" |> AlbumId
      , name = "098/und die Legende der Zwillingseiche"
      , urlToOpen = "https://open.spotify.com/album/0cX49g0wBtvDryEyU5FhwA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bad2f813c4cda57acf1f9fb6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bad2f813c4cda57acf1f9fb6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bad2f813c4cda57acf1f9fb6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0a8k5a76wziBi7sXXXkAEv" |> AlbumId
      , name = "097/auf der Spur der Silberdiebe"
      , urlToOpen = "https://open.spotify.com/album/0a8k5a76wziBi7sXXXkAEv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa5fb3707ce24ed4a8f25ecb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa5fb3707ce24ed4a8f25ecb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa5fb3707ce24ed4a8f25ecb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5Vj6YBjqO0DqRy4Tukg41u" |> AlbumId
      , name = "096/und das gefährliche Treibgut"
      , urlToOpen = "https://open.spotify.com/album/5Vj6YBjqO0DqRy4Tukg41u"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733f6e329ceb2e1a7348173a2a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023f6e329ceb2e1a7348173a2a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513f6e329ceb2e1a7348173a2a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3TM4JQFuCVRI3tKP8fl6yp" |> AlbumId
      , name = "095/in der Höhle des Urmenschen"
      , urlToOpen = "https://open.spotify.com/album/3TM4JQFuCVRI3tKP8fl6yp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27334d381145a0f3f1577342931" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0234d381145a0f3f1577342931"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485134d381145a0f3f1577342931"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ZWewGEaOLmtAwxiPYvtSh" |> AlbumId
      , name = "Der Original-Soundtrack zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/3ZWewGEaOLmtAwxiPYvtSh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273eec85bdb9212c648ed727d70" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02eec85bdb9212c648ed727d70"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851eec85bdb9212c648ed727d70"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3dDoz1yLMHx0n6rllLAXeV" |> AlbumId
      , name = "01/Das Original-Hörspiel zum Kinofilm"
      , urlToOpen = "https://open.spotify.com/album/3dDoz1yLMHx0n6rllLAXeV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f523efb3d9903c04ac0f5d0d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f523efb3d9903c04ac0f5d0d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f523efb3d9903c04ac0f5d0d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6jXHqJzpe6vtywUv5jIHHE" |> AlbumId
      , name = "094/und die Sturmflut"
      , urlToOpen = "https://open.spotify.com/album/6jXHqJzpe6vtywUv5jIHHE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a508ef78de9d0a358bc2510a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a508ef78de9d0a358bc2510a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a508ef78de9d0a358bc2510a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "22KZteRiQXIeJimUZ2TbK3" |> AlbumId
      , name = "093/und das Geheimnis des Winterwaldes"
      , urlToOpen = "https://open.spotify.com/album/22KZteRiQXIeJimUZ2TbK3"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca793522146cffef1c52e359" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca793522146cffef1c52e359"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca793522146cffef1c52e359"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6pOqvlELjegUu4JxJNeKQR" |> AlbumId
      , name = "092/auf der Insel der Seeräuber"
      , urlToOpen = "https://open.spotify.com/album/6pOqvlELjegUu4JxJNeKQR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c88c141a9717e9833c71ee78" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c88c141a9717e9833c71ee78"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c88c141a9717e9833c71ee78"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2G3MuFljF6VMDESi6Vonll" |> AlbumId
      , name = "091/und der Schatz aus dem U-Boot"
      , urlToOpen = "https://open.spotify.com/album/2G3MuFljF6VMDESi6Vonll"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273014ff8ab7caaf8b93770d4d2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02014ff8ab7caaf8b93770d4d2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851014ff8ab7caaf8b93770d4d2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6vNpPneJaDekq3fidhNPN7" |> AlbumId
      , name = "090/retten die Honigbienen"
      , urlToOpen = "https://open.spotify.com/album/6vNpPneJaDekq3fidhNPN7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27385411e7b72e385020c45a1ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0285411e7b72e385020c45a1ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485185411e7b72e385020c45a1ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6g0meqQ9kw3Y0UFiWzyJ7k" |> AlbumId
      , name = "089/und das Familienwappen"
      , urlToOpen = "https://open.spotify.com/album/6g0meqQ9kw3Y0UFiWzyJ7k"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739a5e06b75e4734b30cd8324e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029a5e06b75e4734b30cd8324e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519a5e06b75e4734b30cd8324e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6MMT7DkAPlVeTz6hvvXXW0" |> AlbumId
      , name = "088/und das Gespenst von Canterbury"
      , urlToOpen = "https://open.spotify.com/album/6MMT7DkAPlVeTz6hvvXXW0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27369d7b894a83d68917eb74e47" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0269d7b894a83d68917eb74e47"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485169d7b894a83d68917eb74e47"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3Qud7esyANFkH9t13BEPUw" |> AlbumId
      , name = "087/und das rätselhafte Sternbild"
      , urlToOpen = "https://open.spotify.com/album/3Qud7esyANFkH9t13BEPUw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273edf602653a077ffcb349df75" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02edf602653a077ffcb349df75"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851edf602653a077ffcb349df75"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1niKUvurX2rFPMkFdYSvGk" |> AlbumId
      , name = "086/und die verbotenen Blüten"
      , urlToOpen = "https://open.spotify.com/album/1niKUvurX2rFPMkFdYSvGk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27395d38ee35a2479d233398647" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0295d38ee35a2479d233398647"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485195d38ee35a2479d233398647"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7vGPi7jFvzn6d5RgQnle6h" |> AlbumId
      , name = "085/und der verschwundene Wikingerhelm"
      , urlToOpen = "https://open.spotify.com/album/7vGPi7jFvzn6d5RgQnle6h"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f45c82f5839a94d14692fa6a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f45c82f5839a94d14692fa6a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f45c82f5839a94d14692fa6a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2OeNjbHqDfve97D2q0NJJg" |> AlbumId
      , name = "084/und der Gesang der Sirenen"
      , urlToOpen = "https://open.spotify.com/album/2OeNjbHqDfve97D2q0NJJg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735e1c822cba413f47acbb0187" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025e1c822cba413f47acbb0187"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515e1c822cba413f47acbb0187"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6xtKrk6LQFbEjERrUlPkzT" |> AlbumId
      , name = "083/und das Abenteuer im Hundeschlitten"
      , urlToOpen = "https://open.spotify.com/album/6xtKrk6LQFbEjERrUlPkzT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27374d55266c18019207330656d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0274d55266c18019207330656d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485174d55266c18019207330656d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7DFYLos47Brgbc0r4Nb7vt" |> AlbumId
      , name = "082/und der verhängnisvolle Treibsand"
      , urlToOpen = "https://open.spotify.com/album/7DFYLos47Brgbc0r4Nb7vt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c7cc5f6e9e2181d37dfd78fa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c7cc5f6e9e2181d37dfd78fa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c7cc5f6e9e2181d37dfd78fa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Yk0FlTxdQwOBiyazcL7E9" |> AlbumId
      , name = "081/und das Höhlen-Labyrinth"
      , urlToOpen = "https://open.spotify.com/album/2Yk0FlTxdQwOBiyazcL7E9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273434a2796166a8da2f0f194a8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02434a2796166a8da2f0f194a8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851434a2796166a8da2f0f194a8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0dUM4mpdxdrhu5n2FqvhgJ" |> AlbumId
      , name = "080/und das gefährliche Antoniusfeuer"
      , urlToOpen = "https://open.spotify.com/album/0dUM4mpdxdrhu5n2FqvhgJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738a39d04f87bac063a804dd52" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028a39d04f87bac063a804dd52"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518a39d04f87bac063a804dd52"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Ob5DYYECuqRisjiNvL5GM" |> AlbumId
      , name = "079/und das Rätsel des Drachenbootes"
      , urlToOpen = "https://open.spotify.com/album/6Ob5DYYECuqRisjiNvL5GM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f176c838532cc81d7456770f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f176c838532cc81d7456770f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f176c838532cc81d7456770f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Oe8F56HOoKhJX7tvlvL11" |> AlbumId
      , name = "078/und die Piraten-Bande"
      , urlToOpen = "https://open.spotify.com/album/0Oe8F56HOoKhJX7tvlvL11"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f2e277310375ad8388283d28" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f2e277310375ad8388283d28"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f2e277310375ad8388283d28"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7xBJ98nCNVCOclOSnYOzeI" |> AlbumId
      , name = "077/und das unheimliche Bergmonster"
      , urlToOpen = "https://open.spotify.com/album/7xBJ98nCNVCOclOSnYOzeI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739ba0e1c46dfda268c407aef8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029ba0e1c46dfda268c407aef8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519ba0e1c46dfda268c407aef8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0l8qQcC2q5BiOSYUoQCllH" |> AlbumId
      , name = "076//und das Geheimnis des Maskottchens"
      , urlToOpen = "https://open.spotify.com/album/0l8qQcC2q5BiOSYUoQCllH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273435b1eb477985f9155b9608f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02435b1eb477985f9155b9608f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851435b1eb477985f9155b9608f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "166ZxOtFgr5y5McnH27vwU" |> AlbumId
      , name = "075/und das unheimliche Hexenhaus"
      , urlToOpen = "https://open.spotify.com/album/166ZxOtFgr5y5McnH27vwU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f62318a00343ce74a725d963" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f62318a00343ce74a725d963"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f62318a00343ce74a725d963"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5He2m6kpqw58EYAbBOpxhf" |> AlbumId
      , name = "074/verfolgen den Wilderer"
      , urlToOpen = "https://open.spotify.com/album/5He2m6kpqw58EYAbBOpxhf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273babc9fd010f33aaafb9eeda8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02babc9fd010f33aaafb9eeda8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851babc9fd010f33aaafb9eeda8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0nwiPm3ZUes1vNBto5sxN4" |> AlbumId
      , name = "073/und das Rätsel der Zinnmine"
      , urlToOpen = "https://open.spotify.com/album/0nwiPm3ZUes1vNBto5sxN4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737b0adef065cfe47818c8c4f8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027b0adef065cfe47818c8c4f8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517b0adef065cfe47818c8c4f8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6e4bQvU28sgg4OIhqhDvmp" |> AlbumId
      , name = "072/auf der Spur der Entführer"
      , urlToOpen = "https://open.spotify.com/album/6e4bQvU28sgg4OIhqhDvmp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c0e67736a0f1fa9278ceb52c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c0e67736a0f1fa9278ceb52c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c0e67736a0f1fa9278ceb52c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Y6aidArNM8JD6z85nRHv4" |> AlbumId
      , name = "071/und der Verrat an Bord"
      , urlToOpen = "https://open.spotify.com/album/4Y6aidArNM8JD6z85nRHv4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27302f53928750bf78dd20f3047" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0202f53928750bf78dd20f3047"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485102f53928750bf78dd20f3047"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4K5VhGgTc0HHpqxnOnpY3b" |> AlbumId
      , name = "070/und die Rückkehr zur Gespensterinsel"
      , urlToOpen = "https://open.spotify.com/album/4K5VhGgTc0HHpqxnOnpY3b"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273755ca28dca32ffb4aa09a191" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02755ca28dca32ffb4aa09a191"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851755ca28dca32ffb4aa09a191"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5c6cJEmVIZMCDoIM8C4mBJ" |> AlbumId
      , name = "069/und die Gefahr für die Felseninsel"
      , urlToOpen = "https://open.spotify.com/album/5c6cJEmVIZMCDoIM8C4mBJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d31395182390afaa1f4a62c4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d31395182390afaa1f4a62c4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d31395182390afaa1f4a62c4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4H8aT42VazYkjXLA30Rs46" |> AlbumId
      , name = "068/und die Druiden von Stonehenge"
      , urlToOpen = "https://open.spotify.com/album/4H8aT42VazYkjXLA30Rs46"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273914248cb2ed93e47deca5e0f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02914248cb2ed93e47deca5e0f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851914248cb2ed93e47deca5e0f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1Un1S8omjGi2weFV5s8krP" |> AlbumId
      , name = "067/und der unheimliche Brandstifter"
      , urlToOpen = "https://open.spotify.com/album/1Un1S8omjGi2weFV5s8krP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734d2d1d83ec1d5a6a5653bd49" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024d2d1d83ec1d5a6a5653bd49"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514d2d1d83ec1d5a6a5653bd49"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1RUrpfazmZTqx95YxWHQTA" |> AlbumId
      , name = "066/und das Seeungeheuer"
      , urlToOpen = "https://open.spotify.com/album/1RUrpfazmZTqx95YxWHQTA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a6452da6ff98881c3b2beda2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a6452da6ff98881c3b2beda2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a6452da6ff98881c3b2beda2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3VISsuJBFrcP7NxAo3aQWl" |> AlbumId
      , name = "065/und die schwarze Festung"
      , urlToOpen = "https://open.spotify.com/album/3VISsuJBFrcP7NxAo3aQWl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730eabb70eba8e9f7cf1fb4816" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020eabb70eba8e9f7cf1fb4816"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510eabb70eba8e9f7cf1fb4816"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3UDg2jZxtAu2FzZYWPFida" |> AlbumId
      , name = "064/geraten unter Verdacht"
      , urlToOpen = "https://open.spotify.com/album/3UDg2jZxtAu2FzZYWPFida"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a441448575d915e8b38339f7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a441448575d915e8b38339f7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a441448575d915e8b38339f7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3MULBnI2WPbx3fwThf5mu1" |> AlbumId
      , name = "063/und der Stein des Pharao"
      , urlToOpen = "https://open.spotify.com/album/3MULBnI2WPbx3fwThf5mu1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27394d85b1fa64016131f5a5c11" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0294d85b1fa64016131f5a5c11"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485194d85b1fa64016131f5a5c11"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6m9zlu731zUcXa6s6YwNH7" |> AlbumId
      , name = "062/und das Spuk-Festival"
      , urlToOpen = "https://open.spotify.com/album/6m9zlu731zUcXa6s6YwNH7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e0ef7a786cfd22d5ec42fe42" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e0ef7a786cfd22d5ec42fe42"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e0ef7a786cfd22d5ec42fe42"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6c97zHkOHsOazhPs5o04My" |> AlbumId
      , name = "061/und die Aufregung im Raubtierhaus"
      , urlToOpen = "https://open.spotify.com/album/6c97zHkOHsOazhPs5o04My"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735bd90901b367dbcdab88add6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025bd90901b367dbcdab88add6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515bd90901b367dbcdab88add6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6EhVUKOjpa6zOR3HJrmQSw" |> AlbumId
      , name = "060/tauchen unter"
      , urlToOpen = "https://open.spotify.com/album/6EhVUKOjpa6zOR3HJrmQSw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27339ed056712aa2f97d2a7d507" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0239ed056712aa2f97d2a7d507"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485139ed056712aa2f97d2a7d507"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "45PizjOsP8gWSGoEwpyj8q" |> AlbumId
      , name = "059/und das Abenteuer im Schnee"
      , urlToOpen = "https://open.spotify.com/album/45PizjOsP8gWSGoEwpyj8q"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27350edba949fbf4cecc52b0154" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0250edba949fbf4cecc52b0154"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485150edba949fbf4cecc52b0154"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4QKoFx1seuUXKjZkAzCY4x" |> AlbumId
      , name = "058/und die afrikanische Statue"
      , urlToOpen = "https://open.spotify.com/album/4QKoFx1seuUXKjZkAzCY4x"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f9ca3aee8a7a66b8d773e94e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f9ca3aee8a7a66b8d773e94e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f9ca3aee8a7a66b8d773e94e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5IyZl2UWrXvzEZxgTNmRYs" |> AlbumId
      , name = "057/und der fliegende Teppich"
      , urlToOpen = "https://open.spotify.com/album/5IyZl2UWrXvzEZxgTNmRYs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d219dae38ddb7f3297ed3484" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d219dae38ddb7f3297ed3484"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d219dae38ddb7f3297ed3484"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2qpNu6Uzrrt2YG6wksmCj9" |> AlbumId
      , name = "056/und die geheimnisvolle Erbschaft"
      , urlToOpen = "https://open.spotify.com/album/2qpNu6Uzrrt2YG6wksmCj9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734bbf721deb9b13b51992415f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024bbf721deb9b13b51992415f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514bbf721deb9b13b51992415f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "10MCeSGudi98fDs54Yo3LZ" |> AlbumId
      , name = "055/und die goldene Schlange"
      , urlToOpen = "https://open.spotify.com/album/10MCeSGudi98fDs54Yo3LZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735084ee885c99725430fc298b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025084ee885c99725430fc298b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515084ee885c99725430fc298b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "63LJzNuzHOR8zyhICkhZ3U" |> AlbumId
      , name = "054/suchen den Stern des Nordens"
      , urlToOpen = "https://open.spotify.com/album/63LJzNuzHOR8zyhICkhZ3U"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732b22219b4d4b0c4c268a0353" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022b22219b4d4b0c4c268a0353"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512b22219b4d4b0c4c268a0353"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7KL5tfLbkTgJ3SW23YpnLH" |> AlbumId
      , name = "053/und die geheimnisvollen Kornkreise"
      , urlToOpen = "https://open.spotify.com/album/7KL5tfLbkTgJ3SW23YpnLH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bbe6178d2e11aca6d546f7f7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bbe6178d2e11aca6d546f7f7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bbe6178d2e11aca6d546f7f7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6K9b0vkwZu1As1Ynymut6e" |> AlbumId
      , name = "052/und das Phantom von Sherwood Forest"
      , urlToOpen = "https://open.spotify.com/album/6K9b0vkwZu1As1Ynymut6e"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736828f5f32458e75cb4b0f4c8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026828f5f32458e75cb4b0f4c8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516828f5f32458e75cb4b0f4c8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1Y3pOmF4IXHU08Rop0TTN0" |> AlbumId
      , name = "051/und der Eisenbahnraub"
      , urlToOpen = "https://open.spotify.com/album/1Y3pOmF4IXHU08Rop0TTN0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737831cf9c6d9e17ce340334bc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027831cf9c6d9e17ce340334bc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517831cf9c6d9e17ce340334bc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5FFMI41Qtmi70WSUZhSH0Z" |> AlbumId
      , name = "050/Timmy in Gefahr"
      , urlToOpen = "https://open.spotify.com/album/5FFMI41Qtmi70WSUZhSH0Z"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731e5547de98a63939421147eb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021e5547de98a63939421147eb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511e5547de98a63939421147eb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "32saLGUXvsHEw0hKYNr0yI" |> AlbumId
      , name = "049/und die Frau ohne Gedächtnis"
      , urlToOpen = "https://open.spotify.com/album/32saLGUXvsHEw0hKYNr0yI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732347dc07e2ae51f60658f296" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022347dc07e2ae51f60658f296"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512347dc07e2ae51f60658f296"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1TDoizBwEYox8icnxRtNc5" |> AlbumId
      , name = "048/und die Schrift der Tempelritter"
      , urlToOpen = "https://open.spotify.com/album/1TDoizBwEYox8icnxRtNc5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730c649066f1ef7f8f39a609a6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020c649066f1ef7f8f39a609a6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510c649066f1ef7f8f39a609a6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0TP7S0UMx4ekRfkWYLNRAN" |> AlbumId
      , name = "047/und der singende Schrank"
      , urlToOpen = "https://open.spotify.com/album/0TP7S0UMx4ekRfkWYLNRAN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736795b1ce33512fc9cfcbaf7e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026795b1ce33512fc9cfcbaf7e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516795b1ce33512fc9cfcbaf7e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5C9uMZlffC4HuHBA1VWHTH" |> AlbumId
      , name = "046/lösen das Rätsel des Landschulheims"
      , urlToOpen = "https://open.spotify.com/album/5C9uMZlffC4HuHBA1VWHTH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27375fbe3903dfa5fcb55adfd7f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0275fbe3903dfa5fcb55adfd7f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485175fbe3903dfa5fcb55adfd7f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "09HT8wAayNt5y4EWA7Hont" |> AlbumId
      , name = "045/und das Bootshaus in der Nebelbucht"
      , urlToOpen = "https://open.spotify.com/album/09HT8wAayNt5y4EWA7Hont"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27332e3e721534be904f4be2f3d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0232e3e721534be904f4be2f3d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485132e3e721534be904f4be2f3d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "325FWbbT8I4Bsjfq7MRCSw" |> AlbumId
      , name = "044/und die Flaschenpost"
      , urlToOpen = "https://open.spotify.com/album/325FWbbT8I4Bsjfq7MRCSw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ee5c06065b5d883bbc215d2c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ee5c06065b5d883bbc215d2c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ee5c06065b5d883bbc215d2c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4QvS9DYUA9FI97z5uignYO" |> AlbumId
      , name = "043/und der unheimliche Mönch"
      , urlToOpen = "https://open.spotify.com/album/4QvS9DYUA9FI97z5uignYO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273376522059f492279c6f1f249" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02376522059f492279c6f1f249"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851376522059f492279c6f1f249"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "34QraAd9TYolYLJln84Fcq" |> AlbumId
      , name = "042/und der Dolch des Piraten"
      , urlToOpen = "https://open.spotify.com/album/34QraAd9TYolYLJln84Fcq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e838fdfef602d33aa67d2897" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e838fdfef602d33aa67d2897"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e838fdfef602d33aa67d2897"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "14oT9rq1E7KG10UyohENQz" |> AlbumId
      , name = "041/und die Spur des Dinosauriers"
      , urlToOpen = "https://open.spotify.com/album/14oT9rq1E7KG10UyohENQz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e02ce2d9eb2f71d3d3b928b7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e02ce2d9eb2f71d3d3b928b7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e02ce2d9eb2f71d3d3b928b7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6yL9LUp5Yf9Lmd5B85QmV1" |> AlbumId
      , name = "040/und das verschwundene Pferd"
      , urlToOpen = "https://open.spotify.com/album/6yL9LUp5Yf9Lmd5B85QmV1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d36ab1c5882a58ff2d288386" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d36ab1c5882a58ff2d288386"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d36ab1c5882a58ff2d288386"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1GRTlGk1VE2IsaAtn65rFT" |> AlbumId
      , name = "039/und das Monster im Moor"
      , urlToOpen = "https://open.spotify.com/album/1GRTlGk1VE2IsaAtn65rFT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27344f57aec90b55eadf2847cdf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0244f57aec90b55eadf2847cdf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485144f57aec90b55eadf2847cdf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4YjfEt3QFakmPHX0PrBe9n" |> AlbumId
      , name = "038/und das rätselhafte Medaillon"
      , urlToOpen = "https://open.spotify.com/album/4YjfEt3QFakmPHX0PrBe9n"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c7b11150852e67aefa281dd4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c7b11150852e67aefa281dd4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c7b11150852e67aefa281dd4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2d1Kmo2rQbpJK1mfAlPyou" |> AlbumId
      , name = "037/und das Abenteuer im Ballon"
      , urlToOpen = "https://open.spotify.com/album/2d1Kmo2rQbpJK1mfAlPyou"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739534358aa195cc6125386116" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029534358aa195cc6125386116"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519534358aa195cc6125386116"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "16k5VHiYdyJlLZ1HDnHMTu" |> AlbumId
      , name = "036/gefangen im Hünengrab"
      , urlToOpen = "https://open.spotify.com/album/16k5VHiYdyJlLZ1HDnHMTu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27393bff5be12e982bbb74ffa26" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0293bff5be12e982bbb74ffa26"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485193bff5be12e982bbb74ffa26"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0pNx8acv1Khae0a6cqYMxx" |> AlbumId
      , name = "035/und die gestohlene Briefmarke"
      , urlToOpen = "https://open.spotify.com/album/0pNx8acv1Khae0a6cqYMxx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c5152841e77b219bcc107237" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c5152841e77b219bcc107237"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c5152841e77b219bcc107237"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "07t7JTdTe3EJxrVuBpDlam" |> AlbumId
      , name = "034/und die Gespensterinsel"
      , urlToOpen = "https://open.spotify.com/album/07t7JTdTe3EJxrVuBpDlam"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b90bf472c138c3132b03dcbc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b90bf472c138c3132b03dcbc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b90bf472c138c3132b03dcbc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3TjAvJy8Jp1gTdcYpzyQrG" |> AlbumId
      , name = "033/entdecken den Geheimgang"
      , urlToOpen = "https://open.spotify.com/album/3TjAvJy8Jp1gTdcYpzyQrG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273735770417486efcc291db631" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02735770417486efcc291db631"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851735770417486efcc291db631"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4l6hSvAivAqYTwAJNpuGUl" |> AlbumId
      , name = "032/und das Geheimnis des Oldtimers"
      , urlToOpen = "https://open.spotify.com/album/4l6hSvAivAqYTwAJNpuGUl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c17d58de2abbff41cca49330" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c17d58de2abbff41cca49330"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c17d58de2abbff41cca49330"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1rVETlFNVsiTZ8XOcSAG0y" |> AlbumId
      , name = "031/in der Geisterbahn"
      , urlToOpen = "https://open.spotify.com/album/1rVETlFNVsiTZ8XOcSAG0y"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733d0c951cffc72fafb73da13b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023d0c951cffc72fafb73da13b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513d0c951cffc72fafb73da13b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0LLPKdB0JAu4ChP4VSBnLs" |> AlbumId
      , name = "030/auf gefährlichen Pfaden"
      , urlToOpen = "https://open.spotify.com/album/0LLPKdB0JAu4ChP4VSBnLs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f93cb0f37ae8a0087df1ad81" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f93cb0f37ae8a0087df1ad81"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f93cb0f37ae8a0087df1ad81"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6xqvtpo28RddZoNoUCC4Ln" |> AlbumId
      , name = "029/und die Schwarze Maske"
      , urlToOpen = "https://open.spotify.com/album/6xqvtpo28RddZoNoUCC4Ln"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739794ce6cf252703edd9ff49d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029794ce6cf252703edd9ff49d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519794ce6cf252703edd9ff49d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2G5pUbYCwZF7JGxGlEEMHX" |> AlbumId
      , name = "028/und die geheimnisvolle Stadt"
      , urlToOpen = "https://open.spotify.com/album/2G5pUbYCwZF7JGxGlEEMHX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d69cd958201e01d03cbac6b2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d69cd958201e01d03cbac6b2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d69cd958201e01d03cbac6b2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7c0inxL7ps7oQ9FmXj0lL2" |> AlbumId
      , name = "027/und die goldene Truhe"
      , urlToOpen = "https://open.spotify.com/album/7c0inxL7ps7oQ9FmXj0lL2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cd8320616678e2824108e963" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cd8320616678e2824108e963"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cd8320616678e2824108e963"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1O8JeQXHM6GkksezdglGuw" |> AlbumId
      , name = "026/und die Perlenschmuggler"
      , urlToOpen = "https://open.spotify.com/album/1O8JeQXHM6GkksezdglGuw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cf71e20c1ff097e5b9ea37d4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cf71e20c1ff097e5b9ea37d4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cf71e20c1ff097e5b9ea37d4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5DLMGNCegLz67iifFwWiDd" |> AlbumId
      , name = "025/und die Flugzeugentführer"
      , urlToOpen = "https://open.spotify.com/album/5DLMGNCegLz67iifFwWiDd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27387316c1b7b6f4a2f5c3b3509" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0287316c1b7b6f4a2f5c3b3509"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485187316c1b7b6f4a2f5c3b3509"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6ZJG6HTgrYmXl15UsyPJ3N" |> AlbumId
      , name = "024/im Fernsehen"
      , urlToOpen = "https://open.spotify.com/album/6ZJG6HTgrYmXl15UsyPJ3N"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27303f3be0d6909b0452344bea2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0203f3be0d6909b0452344bea2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485103f3be0d6909b0452344bea2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7KT79rYzrmQcSkMRqTRcFS" |> AlbumId
      , name = "023/und die Jagd nach den Smaragden"
      , urlToOpen = "https://open.spotify.com/album/7KT79rYzrmQcSkMRqTRcFS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735d102a66912dc0752eb26e7e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025d102a66912dc0752eb26e7e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515d102a66912dc0752eb26e7e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7lH0VALZVG4EWR9Mjumkc0" |> AlbumId
      , name = "022/und die Museumsbande"
      , urlToOpen = "https://open.spotify.com/album/7lH0VALZVG4EWR9Mjumkc0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27324617f6f9c6d8e56239de9c2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0224617f6f9c6d8e56239de9c2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485124617f6f9c6d8e56239de9c2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6q0JbsC5Cz4AL1JSJzUIQ8" |> AlbumId
      , name = "021/auf neuen Abenteuern"
      , urlToOpen = "https://open.spotify.com/album/6q0JbsC5Cz4AL1JSJzUIQ8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737e539fd8c3b995ce49f11ab5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027e539fd8c3b995ce49f11ab5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517e539fd8c3b995ce49f11ab5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "30X7YEF6VsbqY7YiiNdaTv" |> AlbumId
      , name = "020/erforschen die Schatzinsel"
      , urlToOpen = "https://open.spotify.com/album/30X7YEF6VsbqY7YiiNdaTv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27377cac78b938f539cd417f88e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0277cac78b938f539cd417f88e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485177cac78b938f539cd417f88e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2N0HMpaXpx9NCmivgzcnqZ" |> AlbumId
      , name = "019/auf Schmugglerjagd"
      , urlToOpen = "https://open.spotify.com/album/2N0HMpaXpx9NCmivgzcnqZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a696f5fe7231d947a96a55cd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a696f5fe7231d947a96a55cd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a696f5fe7231d947a96a55cd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3Dkdr202NIt7jCSwNNyGCY" |> AlbumId
      , name = "018/auf geheimnisvollen Spuren"
      , urlToOpen = "https://open.spotify.com/album/3Dkdr202NIt7jCSwNNyGCY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b350e35ddc8b0c336c85b917" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b350e35ddc8b0c336c85b917"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b350e35ddc8b0c336c85b917"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3QmaekbwAghuJ5nGi7waz4" |> AlbumId
      , name = "017/auf großer Fahrt"
      , urlToOpen = "https://open.spotify.com/album/3QmaekbwAghuJ5nGi7waz4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27398825e1838a5bd3ed8896dfe" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0298825e1838a5bd3ed8896dfe"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485198825e1838a5bd3ed8896dfe"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2R4v7Ul9pBuYixU3Z12jOq" |> AlbumId
      , name = "016/auf dem Leuchtturm"
      , urlToOpen = "https://open.spotify.com/album/2R4v7Ul9pBuYixU3Z12jOq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735e1035847d97cbc9c9d3933a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025e1035847d97cbc9c9d3933a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515e1035847d97cbc9c9d3933a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2EYXrVYSW2yvzdacdZXdCN" |> AlbumId
      , name = "015/wittern ein Geheimnis"
      , urlToOpen = "https://open.spotify.com/album/2EYXrVYSW2yvzdacdZXdCN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731f75dc4fc1ef9a1afaf64136" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021f75dc4fc1ef9a1afaf64136"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511f75dc4fc1ef9a1afaf64136"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1AuEwi9nwzYDbr6ELO3iQ7" |> AlbumId
      , name = "014/machen eine Entdeckung"
      , urlToOpen = "https://open.spotify.com/album/1AuEwi9nwzYDbr6ELO3iQ7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a16c548ef430474ce2d44bd8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a16c548ef430474ce2d44bd8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a16c548ef430474ce2d44bd8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6PtodneZRZqjBRbqGEUBYq" |> AlbumId
      , name = "013/jagen die Entführer"
      , urlToOpen = "https://open.spotify.com/album/6PtodneZRZqjBRbqGEUBYq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27388464e62c537e17618a01e90" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0288464e62c537e17618a01e90"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485188464e62c537e17618a01e90"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4vG33WvVt4u3kaLxkGfjts" |> AlbumId
      , name = "012/auf der Felseninsel"
      , urlToOpen = "https://open.spotify.com/album/4vG33WvVt4u3kaLxkGfjts"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ddb9e814cee90bc099cf9c70" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ddb9e814cee90bc099cf9c70"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ddb9e814cee90bc099cf9c70"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0zW2tRB2mekUQdMClmLsTV" |> AlbumId
      , name = "011/geraten in Schwierigkeiten"
      , urlToOpen = "https://open.spotify.com/album/0zW2tRB2mekUQdMClmLsTV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273736e74ede3f864aa9c7d9739" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02736e74ede3f864aa9c7d9739"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851736e74ede3f864aa9c7d9739"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5fFMNQtye6cjBXSt38axNj" |> AlbumId
      , name = "009/im alten Turm"
      , urlToOpen = "https://open.spotify.com/album/5fFMNQtye6cjBXSt38axNj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273743f045e917552a6ef909a1c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02743f045e917552a6ef909a1c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851743f045e917552a6ef909a1c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0pZAAAYIBruAZZkqg9K6PX" |> AlbumId
      , name = "006/helfen ihrem Kameraden"
      , urlToOpen = "https://open.spotify.com/album/0pZAAAYIBruAZZkqg9K6PX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca324261beb70b0ba8fbf810" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca324261beb70b0ba8fbf810"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca324261beb70b0ba8fbf810"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5gCYYcivqoJL2voJg5K1ou" |> AlbumId
      , name = "005/und der Zauberer Wu"
      , urlToOpen = "https://open.spotify.com/album/5gCYYcivqoJL2voJg5K1ou"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739e202e2d721c3df40870736b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029e202e2d721c3df40870736b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519e202e2d721c3df40870736b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Uou6b83FPi6q0BNQi4Px2" |> AlbumId
      , name = "004/als Retter in der Not"
      , urlToOpen = "https://open.spotify.com/album/6Uou6b83FPi6q0BNQi4Px2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273677e74f5d421556e17a36a50" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02677e74f5d421556e17a36a50"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851677e74f5d421556e17a36a50"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3M4cqtKzzPRWUdwxoFiBnz" |> AlbumId
      , name = "003/und das Burgverlies"
      , urlToOpen = "https://open.spotify.com/album/3M4cqtKzzPRWUdwxoFiBnz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27350f52c0579b6cc40bc498831" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0250f52c0579b6cc40bc498831"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485150f52c0579b6cc40bc498831"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7tfESyt6scRuKPzOAXF4PC" |> AlbumId
      , name = "002/im Zeltlager"
      , urlToOpen = "https://open.spotify.com/album/7tfESyt6scRuKPzOAXF4PC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27318b6cc3db166ffd7d62660ef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0218b6cc3db166ffd7d62660ef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485118b6cc3db166ffd7d62660ef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7Hx03j0oo3eLfuijiUXAHg" |> AlbumId
      , name = "001/beim Wanderzirkus"
      , urlToOpen = "https://open.spotify.com/album/7Hx03j0oo3eLfuijiUXAHg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735b1a547d35487dc9d37a6de9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025b1a547d35487dc9d37a6de9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515b1a547d35487dc9d37a6de9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    ] |> Array.fromList
