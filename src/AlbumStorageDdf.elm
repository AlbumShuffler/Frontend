module AlbumStorageDdf exposing ( albumStorage, artistInfo )

import Array exposing(Array)
import Albums exposing (Album, ArtistInfo)


artistInfo : ArtistInfo
artistInfo =
  { id = "3meJIgRw7YleJrmbpbJK6S"
  , name = "Die drei ???" 
  , imageUrl = "https://i.scdn.co/image/ab6761610000e5eb7de827ab626c867816052015" 
  , shortName = "DDF"
  , httpFriendlyShortName = "ddf"
  , coverColorA = "#DF030E"
  , coverColorB = "#04A5E3"
  }


albumStorage : Array Album
albumStorage =
    [ { id = "3Sv5tE8PcAlGY6Ys2ISQXF"
      , name = "Folge 226: Die Spur der Toten"
      , urlToOpen = "https://open.spotify.com/album/3Sv5tE8PcAlGY6Ys2ISQXF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732343257bb6ea89abaf23074c"
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022343257bb6ea89abaf23074c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512343257bb6ea89abaf23074c"
              , width = 64 
              , height = 64 
              }
            ] }
    , { id = "0FuC7q4bJG41g1naKBx4ot"
      , name = "Folge 225: und der Puppenmacher"
      , urlToOpen = "https://open.spotify.com/album/0FuC7q4bJG41g1naKBx4ot"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273312f2992744d99954b01f81a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02312f2992744d99954b01f81a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851312f2992744d99954b01f81a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7JhdaReI98XYFrzb3jJPFa"
      , name = "Folge 224: Die Yacht des Verrats"
      , urlToOpen = "https://open.spotify.com/album/7JhdaReI98XYFrzb3jJPFa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d7457d9305c333af2d504c79" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d7457d9305c333af2d504c79"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d7457d9305c333af2d504c79"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0oZaQfEwMWY2TfviD4fEdV"
      , name = "Adventskalender - Böser die Glocken nie klingen"
      , urlToOpen = "https://open.spotify.com/album/0oZaQfEwMWY2TfviD4fEdV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273332701bdaae77957693c6569" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02332701bdaae77957693c6569"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851332701bdaae77957693c6569"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4UCwiqC6kHQIsODPuJ0GoZ"
      , name = "Kai Schwind liest... und das Bergmonster"
      , urlToOpen = "https://open.spotify.com/album/4UCwiqC6kHQIsODPuJ0GoZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735df9d92322a1f4428de8271d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025df9d92322a1f4428de8271d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515df9d92322a1f4428de8271d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "451jKBwuSNrNgLlqEAZfra"
      , name = "Folge 223: und der Knochenmann"
      , urlToOpen = "https://open.spotify.com/album/451jKBwuSNrNgLlqEAZfra"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e37da75bbad97a220ee3ee6c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e37da75bbad97a220ee3ee6c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e37da75bbad97a220ee3ee6c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6xZHTtiSBFxKdV2rJVHj2V"
      , name = "Klaas Heufer-Umlauf liest... und der schrullige Millionär"
      , urlToOpen = "https://open.spotify.com/album/6xZHTtiSBFxKdV2rJVHj2V"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732e845d2a16ac538415a2e506" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022e845d2a16ac538415a2e506"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512e845d2a16ac538415a2e506"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3o2Gwvg8lqLNRnlV1v1s5K"
      , name = "Folge 222: und die Gesetzlosen"
      , urlToOpen = "https://open.spotify.com/album/3o2Gwvg8lqLNRnlV1v1s5K"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ac186438a7df50806f06a5ca" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ac186438a7df50806f06a5ca"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ac186438a7df50806f06a5ca"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "77aMP5aTkzIaVW1SPxvLxy"
      , name = "Mai Thi Nguyen-Kim liest... und die rätselhaften Bilder"
      , urlToOpen = "https://open.spotify.com/album/77aMP5aTkzIaVW1SPxvLxy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737a257189780470a21b13d08a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027a257189780470a21b13d08a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517a257189780470a21b13d08a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1KpVSqapKAUAtAepWWxPWs"
      , name = "Folge 221: Manuskript des Satans"
      , urlToOpen = "https://open.spotify.com/album/1KpVSqapKAUAtAepWWxPWs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732173fc7af2170f213c2058ce" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022173fc7af2170f213c2058ce"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512173fc7af2170f213c2058ce"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Z5khV1jYxMvc5peWZdnwC"
      , name = "Holger Mahlich liest...und die gefährliche Erbschaft"
      , urlToOpen = "https://open.spotify.com/album/2Z5khV1jYxMvc5peWZdnwC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b41759225f368a06182422fd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b41759225f368a06182422fd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b41759225f368a06182422fd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "67Ipucoa0blx27O3sV7yAi"
      , name = "Erbe des Drachen (Das Original-Hörspiel zum Kinofilm)"
      , urlToOpen = "https://open.spotify.com/album/67Ipucoa0blx27O3sV7yAi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738e71d2b3820de0e58fb40096" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028e71d2b3820de0e58fb40096"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518e71d2b3820de0e58fb40096"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "01i4iyB40EU7Qgd6EgKoZt"
      , name = "Folge 220: Im Wald der Gefahren"
      , urlToOpen = "https://open.spotify.com/album/01i4iyB40EU7Qgd6EgKoZt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f46bde5de61bb0dea42b0df1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f46bde5de61bb0dea42b0df1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f46bde5de61bb0dea42b0df1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3IxPhnYxh3qACTa2GBYVUw"
      , name = "Eckart Dux liest...und der Höhlenmensch"
      , urlToOpen = "https://open.spotify.com/album/3IxPhnYxh3qACTa2GBYVUw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273321cec3b384aac2b95ebda4b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02321cec3b384aac2b95ebda4b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851321cec3b384aac2b95ebda4b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6ewdyVIW2LurJhYGU0UBAa"
      , name = "Folge 219: und die Teufelsklippe"
      , urlToOpen = "https://open.spotify.com/album/6ewdyVIW2LurJhYGU0UBAa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c16fa39d829813f43466fe2b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c16fa39d829813f43466fe2b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c16fa39d829813f43466fe2b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0lwfVPSf5Zs5PTGkcSgSeo"
      , name = "Nicholas Müller liest... und die silberne Spinne"
      , urlToOpen = "https://open.spotify.com/album/0lwfVPSf5Zs5PTGkcSgSeo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730477da7288f69a258a73cc80" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020477da7288f69a258a73cc80"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510477da7288f69a258a73cc80"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4qHjQN4qvZu9x27O5LOn2G"
      , name = "Jan Böhmermann liest... und die flüsternde Mumie"
      , urlToOpen = "https://open.spotify.com/album/4qHjQN4qvZu9x27O5LOn2G"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730b682a9792a5e1501cea04b6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020b682a9792a5e1501cea04b6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510b682a9792a5e1501cea04b6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5u2wd0lYukcINw8dUFCREq"
      , name = "Adventskalender - Eine schreckliche Bescherung"
      , urlToOpen = "https://open.spotify.com/album/5u2wd0lYukcINw8dUFCREq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ee1915833d2e9791008bf502" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ee1915833d2e9791008bf502"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ee1915833d2e9791008bf502"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2WwOKZLpFWrvw3O9CISod1"
      , name = "Folge 218: Im Netz der Lügen"
      , urlToOpen = "https://open.spotify.com/album/2WwOKZLpFWrvw3O9CISod1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735519a645e4580ab3e34d6e8f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025519a645e4580ab3e34d6e8f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515519a645e4580ab3e34d6e8f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1WlRnNunbHpnRTTVkxMRnd"
      , name = "Folge 217: und der Kristallschädel"
      , urlToOpen = "https://open.spotify.com/album/1WlRnNunbHpnRTTVkxMRnd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27318b45bb3ee94c1822232b860" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0218b45bb3ee94c1822232b860"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485118b45bb3ee94c1822232b860"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2BkEUZY7Da7bqlUjmMA2Cq"
      , name = "Folge 216: Die Schwingen des Unheils"
      , urlToOpen = "https://open.spotify.com/album/2BkEUZY7Da7bqlUjmMA2Cq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e6fa2fe2022773bb27c5f199" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e6fa2fe2022773bb27c5f199"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e6fa2fe2022773bb27c5f199"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "76pYNMMVZTiuNy3IoXcavU"
      , name = "Folge 215: und die verlorene Zeit"
      , urlToOpen = "https://open.spotify.com/album/76pYNMMVZTiuNy3IoXcavU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733ef0cee1d730df291780cea0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023ef0cee1d730df291780cea0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513ef0cee1d730df291780cea0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2uMs1XZBdGdZuXOY7draw4"
      , name = "und der dreiäugige Totenkopf (Kopfhörer-Hörspiel)"
      , urlToOpen = "https://open.spotify.com/album/2uMs1XZBdGdZuXOY7draw4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27329361d23be44f5af66a6b777" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0229361d23be44f5af66a6b777"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485129361d23be44f5af66a6b777"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7FVn5TYEbQbWM6r8unRaCe"
      , name = "und das versunkene Schiff (Kopfhörer-Hörspiel)"
      , urlToOpen = "https://open.spotify.com/album/7FVn5TYEbQbWM6r8unRaCe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27379db0a40810fa2946daaf8cf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0279db0a40810fa2946daaf8cf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485179db0a40810fa2946daaf8cf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6T5D7KpnftvfLaYPp94U4y"
      , name = "Das Grab der Inka-Mumie (Kopfhörer-Hörspiel)"
      , urlToOpen = "https://open.spotify.com/album/6T5D7KpnftvfLaYPp94U4y"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27370243a8cd78e001c345b33d6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0270243a8cd78e001c345b33d6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485170243a8cd78e001c345b33d6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1cJ3fNx6K47p4eDFqhnvsA"
      , name = "Folge 214: und der Geisterbunker"
      , urlToOpen = "https://open.spotify.com/album/1cJ3fNx6K47p4eDFqhnvsA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732cac6a2ab2f69032fddacc44" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022cac6a2ab2f69032fddacc44"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512cac6a2ab2f69032fddacc44"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5yI3MACumg0ZjPSRUOFmoB"
      , name = "Karin Lieneweg liest...und der sprechende Totenkopf"
      , urlToOpen = "https://open.spotify.com/album/5yI3MACumg0ZjPSRUOFmoB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e41528e7c4430835d9a3d7a7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e41528e7c4430835d9a3d7a7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e41528e7c4430835d9a3d7a7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4BZfSV9maCil4l4yftT74F"
      , name = "Folge 213: Der Fluch der Medusa"
      , urlToOpen = "https://open.spotify.com/album/4BZfSV9maCil4l4yftT74F"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731105e9be1f6a2860fd9eb2db" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021105e9be1f6a2860fd9eb2db"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511105e9be1f6a2860fd9eb2db"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5KIQUoxcSBlPN3ie9xVmnA"
      , name = "Sascha Draeger liest...und der gestohlene Preis"
      , urlToOpen = "https://open.spotify.com/album/5KIQUoxcSBlPN3ie9xVmnA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b110610a842e2f364ba6250e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b110610a842e2f364ba6250e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b110610a842e2f364ba6250e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2zHMeFNQQxKOmUgmppOjIM"
      , name = "Folge 212: und der weiße Leopard"
      , urlToOpen = "https://open.spotify.com/album/2zHMeFNQQxKOmUgmppOjIM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f1b7c01ee282543d37e97f4b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f1b7c01ee282543d37e97f4b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f1b7c01ee282543d37e97f4b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6heVFpJImaEoJT3TEtlSMl"
      , name = "Axel Prahl liest...und die schwarze Katze"
      , urlToOpen = "https://open.spotify.com/album/6heVFpJImaEoJT3TEtlSMl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736d7f57716890ae1014137600" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026d7f57716890ae1014137600"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516d7f57716890ae1014137600"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7pZotNNAYOkeHNvJRKzYRk"
      , name = "Folge 211: und der Jadekönig"
      , urlToOpen = "https://open.spotify.com/album/7pZotNNAYOkeHNvJRKzYRk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27392d4e749fc6dca3aee268cdb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0292d4e749fc6dca3aee268cdb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485192d4e749fc6dca3aee268cdb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4u8yNY4Un2nErgeNRMFeh3"
      , name = "Jürgen Thormann liest... und der Zauberspiegel"
      , urlToOpen = "https://open.spotify.com/album/4u8yNY4Un2nErgeNRMFeh3"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735b004bf5fcce8b9e2b509163" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025b004bf5fcce8b9e2b509163"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515b004bf5fcce8b9e2b509163"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ieWqOL150wJOcft7iZHKZ"
      , name = "Folge 210: und die schweigende Grotte"
      , urlToOpen = "https://open.spotify.com/album/3ieWqOL150wJOcft7iZHKZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737cfecb40f059d5144b2067a2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027cfecb40f059d5144b2067a2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517cfecb40f059d5144b2067a2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7fsdjOiouCHQ9Rlmrz7ZIa"
      , name = "Judy Winter liest...und der Ameisenmensch"
      , urlToOpen = "https://open.spotify.com/album/7fsdjOiouCHQ9Rlmrz7ZIa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273be9055782cdcaed9e6df1c60" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02be9055782cdcaed9e6df1c60"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851be9055782cdcaed9e6df1c60"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0q4FbI22wSMrzgWh5vgHi9"
      , name = "Folge 209: Kreaturen der Nacht"
      , urlToOpen = "https://open.spotify.com/album/0q4FbI22wSMrzgWh5vgHi9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732ca77f19a9c8e0ebfba60adc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022ca77f19a9c8e0ebfba60adc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512ca77f19a9c8e0ebfba60adc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6WgRUQY49NRG6JT6dJ4xEq"
      , name = "208/Kelch des Schicksals"
      , urlToOpen = "https://open.spotify.com/album/6WgRUQY49NRG6JT6dJ4xEq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27330a42eb708efe79fc35b0e10" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0230a42eb708efe79fc35b0e10"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485130a42eb708efe79fc35b0e10"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3t9NGa2A9SGvipHoU5Bc6m"
      , name = "und das Grab der Maya (Kopfhörer-Hörspiel)"
      , urlToOpen = "https://open.spotify.com/album/3t9NGa2A9SGvipHoU5Bc6m"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732fa85ff14fac4ef5d3b7cdd3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022fa85ff14fac4ef5d3b7cdd3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512fa85ff14fac4ef5d3b7cdd3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4vj4Dq2q7fyvwY7UCj2vin"
      , name = "und das Grab der Maya"
      , urlToOpen = "https://open.spotify.com/album/4vj4Dq2q7fyvwY7UCj2vin"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d6bde10679cf9215db2fd071" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d6bde10679cf9215db2fd071"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d6bde10679cf9215db2fd071"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7ynXpeQRwzqKiv8WVh7c7B"
      , name = "Adventskalender - O du finstere"
      , urlToOpen = "https://open.spotify.com/album/7ynXpeQRwzqKiv8WVh7c7B"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a9ac37c2ff7fe5fb5f29a45e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a9ac37c2ff7fe5fb5f29a45e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a9ac37c2ff7fe5fb5f29a45e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6BxvBG51szGmlg5x3F1rHj"
      , name = "207/Die falschen Detektive"
      , urlToOpen = "https://open.spotify.com/album/6BxvBG51szGmlg5x3F1rHj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b7cb427c9c5bf0fabfebb834" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b7cb427c9c5bf0fabfebb834"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b7cb427c9c5bf0fabfebb834"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5YuHQZqJWP3EmAvMSoWeTs"
      , name = "Katrin Fröhlich liest ...und die singende Schlange"
      , urlToOpen = "https://open.spotify.com/album/5YuHQZqJWP3EmAvMSoWeTs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27394d60d1755b040dd874a29b0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0294d60d1755b040dd874a29b0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485194d60d1755b040dd874a29b0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7khAMIQlYBmW7mI9cphDhJ"
      , name = "206/und der Mottenmann"
      , urlToOpen = "https://open.spotify.com/album/7khAMIQlYBmW7mI9cphDhJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27378d660cdc7db65b7cf350c2a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0278d660cdc7db65b7cf350c2a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485178d660cdc7db65b7cf350c2a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0VmZF3nyMuhRDcyVY0MuE1"
      , name = "Oliver Kalkofe liest ...und der lachende Schatten"
      , urlToOpen = "https://open.spotify.com/album/0VmZF3nyMuhRDcyVY0MuE1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732839fcc33eb0e5588b8dd8bd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022839fcc33eb0e5588b8dd8bd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512839fcc33eb0e5588b8dd8bd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Sw9FBHOoT6fBhYxHsRFxq"
      , name = "205/Das rätselhafte Erbe"
      , urlToOpen = "https://open.spotify.com/album/2Sw9FBHOoT6fBhYxHsRFxq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730a86444fa60c5a785daaa878" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020a86444fa60c5a785daaa878"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510a86444fa60c5a785daaa878"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1PO7K8YvBHLa5d6jIuTkaj"
      , name = "Tim Grobe liest ...und der Fluch des Rubins"
      , urlToOpen = "https://open.spotify.com/album/1PO7K8YvBHLa5d6jIuTkaj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27322d5d85ad46702845c750932" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0222d5d85ad46702845c750932"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485122d5d85ad46702845c750932"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1yMMjH3tDN9GyXiADzTkL9"
      , name = "204/Der dunkle Wächter"
      , urlToOpen = "https://open.spotify.com/album/1yMMjH3tDN9GyXiADzTkL9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27363d3ae8ad1d3d5c4c34d9a19" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0263d3ae8ad1d3d5c4c34d9a19"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485163d3ae8ad1d3d5c4c34d9a19"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5femMu6wEiqpYJ2O6FxwFH"
      , name = "Henning May liest ...und der seltsame Wecker (feat. Henning May)"
      , urlToOpen = "https://open.spotify.com/album/5femMu6wEiqpYJ2O6FxwFH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cb3eefa4f8040f8e23a733fa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cb3eefa4f8040f8e23a733fa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cb3eefa4f8040f8e23a733fa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "76M62o1rdKEqTN1JIbGdGV"
      , name = "und der dreiäugige Totenkopf"
      , urlToOpen = "https://open.spotify.com/album/76M62o1rdKEqTN1JIbGdGV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27348134250ee8e358a9ede821c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0248134250ee8e358a9ede821c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485148134250ee8e358a9ede821c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "79Drf49yNdGLBzzHMGGmBz"
      , name = "203/Tauchgang ins Ungewisse"
      , urlToOpen = "https://open.spotify.com/album/79Drf49yNdGLBzzHMGGmBz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca3db67c80ca900074fa8939" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca3db67c80ca900074fa8939"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca3db67c80ca900074fa8939"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5q9quwSbPpYxoAzMSKGfIw"
      , name = "Jessica Schwarz liest ...und der magische Kreis"
      , urlToOpen = "https://open.spotify.com/album/5q9quwSbPpYxoAzMSKGfIw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273722abef9d6176a7daea03a72" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02722abef9d6176a7daea03a72"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851722abef9d6176a7daea03a72"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "14OPACj7jtzXOrgxis7pu2"
      , name = "Bela B liest... und der tanzende Teufel"
      , urlToOpen = "https://open.spotify.com/album/14OPACj7jtzXOrgxis7pu2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e2d60b7cc46ad63d8369c3bf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e2d60b7cc46ad63d8369c3bf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e2d60b7cc46ad63d8369c3bf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Exxckn0GwbhnGl6N4um2N"
      , name = "202/Das weiße Grab"
      , urlToOpen = "https://open.spotify.com/album/4Exxckn0GwbhnGl6N4um2N"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bc33f1471e6be485ab78fb16" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bc33f1471e6be485ab78fb16"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bc33f1471e6be485ab78fb16"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3qqFfEjRLF7pxUpWw2g0P5"
      , name = "Oliver Rohrbeck liest ...und der Super-Papagei"
      , urlToOpen = "https://open.spotify.com/album/3qqFfEjRLF7pxUpWw2g0P5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736b72b523e718a8cf86bc595a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026b72b523e718a8cf86bc595a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516b72b523e718a8cf86bc595a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1uPmiAn5sBUdGCbAeiPTNG"
      , name = "Jens Wawrczeck liest ...und das Gespensterschloß"
      , urlToOpen = "https://open.spotify.com/album/1uPmiAn5sBUdGCbAeiPTNG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27372261d20240df6a6118cd276" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0272261d20240df6a6118cd276"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485172261d20240df6a6118cd276"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5oCCy3K7JBWfdfp4QNhYxA"
      , name = "Andreas Fröhlich liest...und der Karpatenhund"
      , urlToOpen = "https://open.spotify.com/album/5oCCy3K7JBWfdfp4QNhYxA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738d3382fd6c03d24b41a5daef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028d3382fd6c03d24b41a5daef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518d3382fd6c03d24b41a5daef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3yzJOoR3024vkb7WXRVtFr"
      , name = "Jannik Schümann liest ...und der Phantomsee"
      , urlToOpen = "https://open.spotify.com/album/3yzJOoR3024vkb7WXRVtFr"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734eba9e1187a0bd858c4961a4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024eba9e1187a0bd858c4961a4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514eba9e1187a0bd858c4961a4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6UN8m07SmIzyDe63H0oljL"
      , name = "und das versunkene Schiff"
      , urlToOpen = "https://open.spotify.com/album/6UN8m07SmIzyDe63H0oljL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273980c937b43748adc2ba795e7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02980c937b43748adc2ba795e7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851980c937b43748adc2ba795e7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2EzmlFDy8q8etqohlJpaaB"
      , name = "Anna Thalbach liest ... und die Geisterinsel"
      , urlToOpen = "https://open.spotify.com/album/2EzmlFDy8q8etqohlJpaaB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731b75d0b84c32623d26703286" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021b75d0b84c32623d26703286"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511b75d0b84c32623d26703286"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4FxNfDSXqAg8N1D8NBtvZ5"
      , name = "201/Höhenangst"
      , urlToOpen = "https://open.spotify.com/album/4FxNfDSXqAg8N1D8NBtvZ5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e67533cb79d13ca95633f3f0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e67533cb79d13ca95633f3f0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e67533cb79d13ca95633f3f0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4QQ2iK81MWMhK2Qqr1AO0R"
      , name = "Bastian Pastewka liest... und der grüne Geist"
      , urlToOpen = "https://open.spotify.com/album/4QQ2iK81MWMhK2Qqr1AO0R"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e15a2b23cd8a7d4a5be2ecad" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e15a2b23cd8a7d4a5be2ecad"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e15a2b23cd8a7d4a5be2ecad"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "09Ckx1JLgPsQHHGuSIt2j3"
      , name = "200/Feuriges Auge"
      , urlToOpen = "https://open.spotify.com/album/09Ckx1JLgPsQHHGuSIt2j3"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27352c0f5ffda1043b41fe52969" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0252c0f5ffda1043b41fe52969"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485152c0f5ffda1043b41fe52969"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7bTKP2hU0LRks1bXN1R7ko"
      , name = "199/und der grüne Kobold"
      , urlToOpen = "https://open.spotify.com/album/7bTKP2hU0LRks1bXN1R7ko"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733c7d48d33037a919bfa5508c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023c7d48d33037a919bfa5508c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513c7d48d33037a919bfa5508c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4piiNuehCc4VjN8NBIcnRt"
      , name = "198/Die Legende der Gaukler"
      , urlToOpen = "https://open.spotify.com/album/4piiNuehCc4VjN8NBIcnRt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731e11dc983c38b729c760adc6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021e11dc983c38b729c760adc6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511e11dc983c38b729c760adc6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "39K0Sczt1mIbW33lB5RNer"
      , name = "Und die schwarze Katze"
      , urlToOpen = "https://open.spotify.com/album/39K0Sczt1mIbW33lB5RNer"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e167f6aaba96633ba97c7a6b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e167f6aaba96633ba97c7a6b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e167f6aaba96633ba97c7a6b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0GRoTtX1wI16M7GSnnN96R"
      , name = "197/Im Auge des Sturms"
      , urlToOpen = "https://open.spotify.com/album/0GRoTtX1wI16M7GSnnN96R"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27395228787bf6722ba125ba780" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0295228787bf6722ba125ba780"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485195228787bf6722ba125ba780"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "39a7bHWZyWPxwukCHPrTly"
      , name = "196/Geheimnis des Bauchredners"
      , urlToOpen = "https://open.spotify.com/album/39a7bHWZyWPxwukCHPrTly"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736cc1cf7afc510fb1abd840ec" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026cc1cf7afc510fb1abd840ec"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516cc1cf7afc510fb1abd840ec"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7ehMwTyKuIM4zdiltMxE4X"
      , name = "und der schwarze Tag (Sechs Kurzgeschichten)"
      , urlToOpen = "https://open.spotify.com/album/7ehMwTyKuIM4zdiltMxE4X"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738f1325b5c4e39037888952f5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028f1325b5c4e39037888952f5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518f1325b5c4e39037888952f5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3pbXIzVk7CA5VM2ltxu9TN"
      , name = "195/Im Reich der Ungeheuer"
      , urlToOpen = "https://open.spotify.com/album/3pbXIzVk7CA5VM2ltxu9TN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731567fb7801a75fab70fbd170" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021567fb7801a75fab70fbd170"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511567fb7801a75fab70fbd170"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2oKngJQA5TdxF5QcP3uZEf"
      , name = "194/und die Zeitreisende"
      , urlToOpen = "https://open.spotify.com/album/2oKngJQA5TdxF5QcP3uZEf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731a873873dce1e3e04c87ab21" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021a873873dce1e3e04c87ab21"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511a873873dce1e3e04c87ab21"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4m6VlVOWfrUVhWWrueMo7p"
      , name = "193/Schrecken aus der Tiefe"
      , urlToOpen = "https://open.spotify.com/album/4m6VlVOWfrUVhWWrueMo7p"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737a55ff0895dabb76421152f8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027a55ff0895dabb76421152f8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517a55ff0895dabb76421152f8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1qag2AiFcxXU1UaIgrDFff"
      , name = "192/im Bann des Drachen"
      , urlToOpen = "https://open.spotify.com/album/1qag2AiFcxXU1UaIgrDFff"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bcc00d301f9004805a6daedd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bcc00d301f9004805a6daedd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bcc00d301f9004805a6daedd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2ICtKWqLqMBTzi7UeByhKd"
      , name = "191/Verbrechen im Nichts"
      , urlToOpen = "https://open.spotify.com/album/2ICtKWqLqMBTzi7UeByhKd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739dcb689b096b7a96c30ddbe8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029dcb689b096b7a96c30ddbe8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519dcb689b096b7a96c30ddbe8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "100ZHoBX994GlckxjoGpma"
      , name = "190/und die Kammer der Rätsel"
      , urlToOpen = "https://open.spotify.com/album/100ZHoBX994GlckxjoGpma"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27338991b19472359d2ca4498dd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0238991b19472359d2ca4498dd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485138991b19472359d2ca4498dd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "02MXdFaVMz0qQJjmivjI8g"
      , name = "189/und der unsichtbare Passagier"
      , urlToOpen = "https://open.spotify.com/album/02MXdFaVMz0qQJjmivjI8g"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734adb71fa5ccd222ffc9094ba" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024adb71fa5ccd222ffc9094ba"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514adb71fa5ccd222ffc9094ba"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3egVVb6Zt0LdS6agBMGsiJ"
      , name = "Und das kalte Auge"
      , urlToOpen = "https://open.spotify.com/album/3egVVb6Zt0LdS6agBMGsiJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e1fda9bbaabac431a9814150" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e1fda9bbaabac431a9814150"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e1fda9bbaabac431a9814150"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "22soWryC08ctyMNb6NrMGD"
      , name = "188/Signale aus dem Jenseits"
      , urlToOpen = "https://open.spotify.com/album/22soWryC08ctyMNb6NrMGD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733a8ba4f56a5b403d0758082b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023a8ba4f56a5b403d0758082b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513a8ba4f56a5b403d0758082b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7mH8vdj0TkiPO6fMHBCvYj"
      , name = "und der Tornadojäger"
      , urlToOpen = "https://open.spotify.com/album/7mH8vdj0TkiPO6fMHBCvYj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736b0de580c5d7e90ff02e2e2b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026b0de580c5d7e90ff02e2e2b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516b0de580c5d7e90ff02e2e2b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6uj8JeIgluMibSu8Divkbh"
      , name = "187/und das silberne Amulett"
      , urlToOpen = "https://open.spotify.com/album/6uj8JeIgluMibSu8Divkbh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273082728beff0e90864d9af1d7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02082728beff0e90864d9af1d7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851082728beff0e90864d9af1d7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7osWCNCcvGfqP31G7281iL"
      , name = "Das Grab der Inka-Mumie"
      , urlToOpen = "https://open.spotify.com/album/7osWCNCcvGfqP31G7281iL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cdc026ed0ecaff10a72416f0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cdc026ed0ecaff10a72416f0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cdc026ed0ecaff10a72416f0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5kevid18ttcAPK1vk0kLtc"
      , name = "186/Insel des Vergessens"
      , urlToOpen = "https://open.spotify.com/album/5kevid18ttcAPK1vk0kLtc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c119a7d9d8bcf3d6265b2ce5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c119a7d9d8bcf3d6265b2ce5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c119a7d9d8bcf3d6265b2ce5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7eHh5PAxQBt5KBWzd3a10G"
      , name = "185/und der Mann ohne Augen"
      , urlToOpen = "https://open.spotify.com/album/7eHh5PAxQBt5KBWzd3a10G"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732ab04561f6dd10d93057bdff" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022ab04561f6dd10d93057bdff"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512ab04561f6dd10d93057bdff"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5B7w9vkfh979tEyzwkLk9k"
      , name = "184/und der Hexengarten"
      , urlToOpen = "https://open.spotify.com/album/5B7w9vkfh979tEyzwkLk9k"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27390dce028e8607b629320bc05" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0290dce028e8607b629320bc05"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485190dce028e8607b629320bc05"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1qhlRmclvYWkrYkLnFxFZN"
      , name = "183/und der letzte Song"
      , urlToOpen = "https://open.spotify.com/album/1qhlRmclvYWkrYkLnFxFZN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d85d746b8f4fd287d4c3e6e2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d85d746b8f4fd287d4c3e6e2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d85d746b8f4fd287d4c3e6e2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4zCPToY7AoTqvOKf4HRqAN"
      , name = "182/Im Haus des Henkers"
      , urlToOpen = "https://open.spotify.com/album/4zCPToY7AoTqvOKf4HRqAN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c34d36fd9ae7838173854d6c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c34d36fd9ae7838173854d6c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c34d36fd9ae7838173854d6c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "18xyskqkEGnVfVFhznkFIK"
      , name = "181/Das Kabinett des Zauberers"
      , urlToOpen = "https://open.spotify.com/album/18xyskqkEGnVfVFhznkFIK"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730017b0120cc39fd0c3038508" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020017b0120cc39fd0c3038508"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510017b0120cc39fd0c3038508"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3L3ztKRWI0d7JwZga12WCb"
      , name = "Outro - FdW"
      , urlToOpen = "https://open.spotify.com/album/3L3ztKRWI0d7JwZga12WCb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739496d46637b0e569bdd00ccb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029496d46637b0e569bdd00ccb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519496d46637b0e569bdd00ccb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4lLOJQU6QBH5cxmERE77La"
      , name = "und der Zeitgeist (Sechs Kurzgeschichten)"
      , urlToOpen = "https://open.spotify.com/album/4lLOJQU6QBH5cxmERE77La"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27340bc7671cc0b127ada5886cd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0240bc7671cc0b127ada5886cd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485140bc7671cc0b127ada5886cd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6tioH9PNiZbmUT54MsiX5k"
      , name = "180/und die flüsternden Puppen"
      , urlToOpen = "https://open.spotify.com/album/6tioH9PNiZbmUT54MsiX5k"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d23523197ffd23d8c8cd9d40" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d23523197ffd23d8c8cd9d40"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d23523197ffd23d8c8cd9d40"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4IZ7Lsm5le7HJPtaGLCrjO"
      , name = "179/Die Rache des Untoten"
      , urlToOpen = "https://open.spotify.com/album/4IZ7Lsm5le7HJPtaGLCrjO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273285729b514e4b225b526c831" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02285729b514e4b225b526c831"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851285729b514e4b225b526c831"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5iobM2gNVymvP8XqnRnHVR"
      , name = "Adventskalender - Stille Nacht, düstere Nacht"
      , urlToOpen = "https://open.spotify.com/album/5iobM2gNVymvP8XqnRnHVR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27348a42f6dc0e9d09ebb1ebbcc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0248a42f6dc0e9d09ebb1ebbcc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485148a42f6dc0e9d09ebb1ebbcc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3w5glP0mzKfTanzXpAjN27"
      , name = "178/Der gefiederte Schrecken"
      , urlToOpen = "https://open.spotify.com/album/3w5glP0mzKfTanzXpAjN27"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273666fbf7a8e324e3ad58aece3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02666fbf7a8e324e3ad58aece3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851666fbf7a8e324e3ad58aece3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0w6Khy7kpqTXrEDITf0rZ0"
      , name = "177/Der Geist des Goldgräbers"
      , urlToOpen = "https://open.spotify.com/album/0w6Khy7kpqTXrEDITf0rZ0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738e7ff0aa1075e93b5488ea9f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028e7ff0aa1075e93b5488ea9f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518e7ff0aa1075e93b5488ea9f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4qbxSVpr3NxRjdIVC411ue"
      , name = "176/und der gestohlene Sieg"
      , urlToOpen = "https://open.spotify.com/album/4qbxSVpr3NxRjdIVC411ue"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739178c8031a2bb802b2dba3f7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029178c8031a2bb802b2dba3f7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519178c8031a2bb802b2dba3f7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4uggmrJ3Xpm1e2tcz6laze"
      , name = "175/Schattenwelt"
      , urlToOpen = "https://open.spotify.com/album/4uggmrJ3Xpm1e2tcz6laze"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732d5a3aa39e31ef20ef03835d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022d5a3aa39e31ef20ef03835d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512d5a3aa39e31ef20ef03835d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5RoL0jdWMoJ8KRFVOeFYtX"
      , name = "174/und das Tuch der Toten"
      , urlToOpen = "https://open.spotify.com/album/5RoL0jdWMoJ8KRFVOeFYtX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739075efa474f3eed7e091ddb3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029075efa474f3eed7e091ddb3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519075efa474f3eed7e091ddb3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2ALDCHCHdawewN1sduWVQQ"
      , name = "173/Dämon der Rache"
      , urlToOpen = "https://open.spotify.com/album/2ALDCHCHdawewN1sduWVQQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f2b462ada5672836b61d1c40" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f2b462ada5672836b61d1c40"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f2b462ada5672836b61d1c40"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Anfub4AoVHg9bhJ7js0L0"
      , name = "172/und der Eisenmann"
      , urlToOpen = "https://open.spotify.com/album/6Anfub4AoVHg9bhJ7js0L0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f1232695ca5e820d6f767185" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f1232695ca5e820d6f767185"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f1232695ca5e820d6f767185"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6YbaUGc6ZeR1YnDFGQJV8F"
      , name = "171/und das Phantom aus dem Meer"
      , urlToOpen = "https://open.spotify.com/album/6YbaUGc6ZeR1YnDFGQJV8F"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27357bd67c0f2da824f49ecbf54" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0257bd67c0f2da824f49ecbf54"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485157bd67c0f2da824f49ecbf54"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "62CKj2RCiWDDUtBWTn4KxQ"
      , name = "170/Straße des Grauens"
      , urlToOpen = "https://open.spotify.com/album/62CKj2RCiWDDUtBWTn4KxQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cf44e735ff12cfb4ce1c6f52" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cf44e735ff12cfb4ce1c6f52"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cf44e735ff12cfb4ce1c6f52"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5PEHeYcUhz1Aq02ZB1pUgJ"
      , name = "169/Die Spur des Spielers"
      , urlToOpen = "https://open.spotify.com/album/5PEHeYcUhz1Aq02ZB1pUgJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730fa069b67bba65a9b1e11687" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020fa069b67bba65a9b1e11687"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510fa069b67bba65a9b1e11687"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "77aawQqgLQZxPb9kwSg0JR"
      , name = "168/GPS-Gangster"
      , urlToOpen = "https://open.spotify.com/album/77aawQqgLQZxPb9kwSg0JR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27333321991f509a888c40509eb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0233321991f509a888c40509eb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485133321991f509a888c40509eb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2AEzTekSWfyfzJH56jmhET"
      , name = "Das Rätsel der Sieben"
      , urlToOpen = "https://open.spotify.com/album/2AEzTekSWfyfzJH56jmhET"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27369b8947b4e88fcd124c0b8e9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0269b8947b4e88fcd124c0b8e9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485169b8947b4e88fcd124c0b8e9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7kskBahbrQWCOiaXKuoPjE"
      , name = "167/und das blaue Biest"
      , urlToOpen = "https://open.spotify.com/album/7kskBahbrQWCOiaXKuoPjE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ed6e891582ef3132238429d5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ed6e891582ef3132238429d5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ed6e891582ef3132238429d5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "427kScPIeUSfoNKCNercMC"
      , name = "166/und die brennende Stadt"
      , urlToOpen = "https://open.spotify.com/album/427kScPIeUSfoNKCNercMC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c53fe181f9b626a2180e7d97" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c53fe181f9b626a2180e7d97"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c53fe181f9b626a2180e7d97"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4izJKxYT4fTwIZjoXNgkX7"
      , name = "165/Im Schatten des Giganten"
      , urlToOpen = "https://open.spotify.com/album/4izJKxYT4fTwIZjoXNgkX7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cc8d3cd078f1ed5e6fd5b6b3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cc8d3cd078f1ed5e6fd5b6b3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cc8d3cd078f1ed5e6fd5b6b3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3An657Q0wkVp4nIDg2zpcB"
      , name = "164/Fußball-Teufel"
      , urlToOpen = "https://open.spotify.com/album/3An657Q0wkVp4nIDg2zpcB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738957890a758e26e123f6f24b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028957890a758e26e123f6f24b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518957890a758e26e123f6f24b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4fv0pPN7ZjbUiejSTxTPZh"
      , name = "163/und der verschollene Pilot"
      , urlToOpen = "https://open.spotify.com/album/4fv0pPN7ZjbUiejSTxTPZh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734c132f86698ff0fbd6f8f12e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024c132f86698ff0fbd6f8f12e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514c132f86698ff0fbd6f8f12e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7beppYTqtHAEPKoXyodssF"
      , name = "162/und der schreiende Nebel"
      , urlToOpen = "https://open.spotify.com/album/7beppYTqtHAEPKoXyodssF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d242d4bf2e7eefac5504cfec" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d242d4bf2e7eefac5504cfec"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d242d4bf2e7eefac5504cfec"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1GEzdjI5N25iuGjvypRscs"
      , name = "161/Die blutenden Bilder"
      , urlToOpen = "https://open.spotify.com/album/1GEzdjI5N25iuGjvypRscs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738f453c711437006dd6da2551" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028f453c711437006dd6da2551"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518f453c711437006dd6da2551"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2F6VxgWbGCUpTU9ux6Dtbi"
      , name = "160/Geheimnisvolle Botschaften"
      , urlToOpen = "https://open.spotify.com/album/2F6VxgWbGCUpTU9ux6Dtbi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e10c1dcc9f9ecc07f577c077" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e10c1dcc9f9ecc07f577c077"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e10c1dcc9f9ecc07f577c077"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4rCAnDrNJ96srnBEoA0ISj"
      , name = "159/Nacht der Tiger"
      , urlToOpen = "https://open.spotify.com/album/4rCAnDrNJ96srnBEoA0ISj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cabeab1310cc1583253d3619" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cabeab1310cc1583253d3619"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cabeab1310cc1583253d3619"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2qFuUJMx8w4VEO0Zdf8jFJ"
      , name = "Der 5. Advent"
      , urlToOpen = "https://open.spotify.com/album/2qFuUJMx8w4VEO0Zdf8jFJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735aca6ab743013c0e7539ce06" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025aca6ab743013c0e7539ce06"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515aca6ab743013c0e7539ce06"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3uFt95otJjaxH8o40tPtIS"
      , name = "158/und der Feuergeist"
      , urlToOpen = "https://open.spotify.com/album/3uFt95otJjaxH8o40tPtIS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732d29b1488378e41a00bdc86b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022d29b1488378e41a00bdc86b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512d29b1488378e41a00bdc86b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1nL3AddBvZ845zMyXRowgs"
      , name = "Und die Geisterlampe"
      , urlToOpen = "https://open.spotify.com/album/1nL3AddBvZ845zMyXRowgs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733b47ec9e1c0d5be3e334cb66" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023b47ec9e1c0d5be3e334cb66"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513b47ec9e1c0d5be3e334cb66"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0pdXEEgKjfh4H0aZg4IOTS"
      , name = "157/Im Zeichen der Schlangen"
      , urlToOpen = "https://open.spotify.com/album/0pdXEEgKjfh4H0aZg4IOTS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273737f6623e3b1daae840e36a9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02737f6623e3b1daae840e36a9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851737f6623e3b1daae840e36a9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "78wUIvkGT2CdWW0ngeEy8V"
      , name = "156/Im Netz des Drachen"
      , urlToOpen = "https://open.spotify.com/album/78wUIvkGT2CdWW0ngeEy8V"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27347c43a07885dbced251b72d3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0247c43a07885dbced251b72d3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485147c43a07885dbced251b72d3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "623V90QowsF4WSqV3cHGKf"
      , name = "155/und der Meister des Todes"
      , urlToOpen = "https://open.spotify.com/album/623V90QowsF4WSqV3cHGKf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d3b4ea9e547ffb052d4c6ab7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d3b4ea9e547ffb052d4c6ab7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d3b4ea9e547ffb052d4c6ab7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3uggg8gNlh1kpBxLeOfFTV"
      , name = "154/Botschaft aus der Unterwelt"
      , urlToOpen = "https://open.spotify.com/album/3uggg8gNlh1kpBxLeOfFTV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733ede375dd1a9cb8cd5eba922" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023ede375dd1a9cb8cd5eba922"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513ede375dd1a9cb8cd5eba922"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7nxSEeJiQwI34VwnWT83C9"
      , name = "153/und das Fußballphantom"
      , urlToOpen = "https://open.spotify.com/album/7nxSEeJiQwI34VwnWT83C9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fb378d3d6028237aeeafc91e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fb378d3d6028237aeeafc91e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fb378d3d6028237aeeafc91e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5iNeANVy4supl8HowB9V2h"
      , name = "152/Skateboardfieber"
      , urlToOpen = "https://open.spotify.com/album/5iNeANVy4supl8HowB9V2h"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a3ec0e98597e3412cac23343" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a3ec0e98597e3412cac23343"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a3ec0e98597e3412cac23343"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3u0OSCwiOblOhm4dKjwLN5"
      , name = "151/Schwarze Sonne"
      , urlToOpen = "https://open.spotify.com/album/3u0OSCwiOblOhm4dKjwLN5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273df29122dd4c65a827cfa4f5b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02df29122dd4c65a827cfa4f5b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851df29122dd4c65a827cfa4f5b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2Bxdn8Gn8vEy4UiTOc8cBK"
      , name = "High Strung - Unter Hochspannung"
      , urlToOpen = "https://open.spotify.com/album/2Bxdn8Gn8vEy4UiTOc8cBK"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b1b4963fd7e17e71162e1ec0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b1b4963fd7e17e71162e1ec0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b1b4963fd7e17e71162e1ec0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6cPgVsZ6TPyVIP9BHP5ty5"
      , name = "150/Geisterbucht"
      , urlToOpen = "https://open.spotify.com/album/6cPgVsZ6TPyVIP9BHP5ty5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f0c748c284cc737bb30b1fab" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f0c748c284cc737bb30b1fab"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f0c748c284cc737bb30b1fab"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7K7dfMc3VwHOKtENI1BWTD"
      , name = "149/Der namenlose Gegner"
      , urlToOpen = "https://open.spotify.com/album/7K7dfMc3VwHOKtENI1BWTD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a4a04c78b49bc9e500c9fcee" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a4a04c78b49bc9e500c9fcee"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a4a04c78b49bc9e500c9fcee"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2uOsf31oenHRd4DVxCSjn9"
      , name = "148/und die feurige Flut"
      , urlToOpen = "https://open.spotify.com/album/2uOsf31oenHRd4DVxCSjn9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27331b0c53b003f5fc1894caf4b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0231b0c53b003f5fc1894caf4b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485131b0c53b003f5fc1894caf4b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "35aU9bfmxPGdjiRA4JMuFd"
      , name = "147/Grusel auf Campbell Castle"
      , urlToOpen = "https://open.spotify.com/album/35aU9bfmxPGdjiRA4JMuFd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730f900f5b76227564e2ac52d0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020f900f5b76227564e2ac52d0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510f900f5b76227564e2ac52d0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3D9Jf4mdOBoeyrKpffYBvy"
      , name = "146/Der Biss der Bestie"
      , urlToOpen = "https://open.spotify.com/album/3D9Jf4mdOBoeyrKpffYBvy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b7b5a83fc96967a77a41c681" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b7b5a83fc96967a77a41c681"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b7b5a83fc96967a77a41c681"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5RBu5WK95Q6BtWfA4o3Vgs"
      , name = "Brainwash - Gefangene Gedanken"
      , urlToOpen = "https://open.spotify.com/album/5RBu5WK95Q6BtWfA4o3Vgs"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a5f99b0715333a2e0316a8a2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a5f99b0715333a2e0316a8a2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a5f99b0715333a2e0316a8a2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6TjzBTmeDakBgh5NOGj1BC"
      , name = "145/Die Rache der Samurai"
      , urlToOpen = "https://open.spotify.com/album/6TjzBTmeDakBgh5NOGj1BC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27300797e0abeef149d3662ffb3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0200797e0abeef149d3662ffb3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485100797e0abeef149d3662ffb3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2RxTF6MhAVOtudVNOyHTQz"
      , name = "144/Zwillinge der Finsternis"
      , urlToOpen = "https://open.spotify.com/album/2RxTF6MhAVOtudVNOyHTQz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f283bdbdd13c7d1b7c6f84b7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f283bdbdd13c7d1b7c6f84b7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f283bdbdd13c7d1b7c6f84b7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "249qkyRcqMAoKJhXwrTYtE"
      , name = "House of Horrors - Haus der Angst"
      , urlToOpen = "https://open.spotify.com/album/249qkyRcqMAoKJhXwrTYtE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731f5fe86b88a361fd67a8cd29" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021f5fe86b88a361fd67a8cd29"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511f5fe86b88a361fd67a8cd29"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Y7Pxv7pzLmKVJowmBwOkd"
      , name = "143/und die Poker-Hölle"
      , urlToOpen = "https://open.spotify.com/album/4Y7Pxv7pzLmKVJowmBwOkd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b149627e961840b411ca5b6e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b149627e961840b411ca5b6e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b149627e961840b411ca5b6e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "71moidSHTwJsc2N70axEce"
      , name = "142/Tödliches Eis"
      , urlToOpen = "https://open.spotify.com/album/71moidSHTwJsc2N70axEce"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f0c418735c4c3a3e05c24a0d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f0c418735c4c3a3e05c24a0d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f0c418735c4c3a3e05c24a0d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3JJeehFIJTxhrltC6e44VT"
      , name = "Und der dreiTag"
      , urlToOpen = "https://open.spotify.com/album/3JJeehFIJTxhrltC6e44VT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27322daea68bf2efd750a4e0155" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0222daea68bf2efd750a4e0155"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485122daea68bf2efd750a4e0155"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6gxj68DOHRSVlEM4xzwtRy"
      , name = "141/und die Fußball-Falle"
      , urlToOpen = "https://open.spotify.com/album/6gxj68DOHRSVlEM4xzwtRy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f686875a92eb009b64b11b25" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f686875a92eb009b64b11b25"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f686875a92eb009b64b11b25"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3HxAtK23R2gFkW000mdaFT"
      , name = "140/Stadt der Vampire"
      , urlToOpen = "https://open.spotify.com/album/3HxAtK23R2gFkW000mdaFT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734162c0149a67f725fafbda9c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024162c0149a67f725fafbda9c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514162c0149a67f725fafbda9c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6RJf8I60kNhnYxlnw7eTGv"
      , name = "139/Das Geheimnis der Diva"
      , urlToOpen = "https://open.spotify.com/album/6RJf8I60kNhnYxlnw7eTGv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27347d5f1896f1c4be3f3cb0288" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0247d5f1896f1c4be3f3cb0288"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485147d5f1896f1c4be3f3cb0288"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "79enDMGQWH7LQ5weNB96g7"
      , name = "138/Die geheime Treppe"
      , urlToOpen = "https://open.spotify.com/album/79enDMGQWH7LQ5weNB96g7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27378fdf6976bd9764e411a36a0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0278fdf6976bd9764e411a36a0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485178fdf6976bd9764e411a36a0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3m7fR2wOkytZHq9m4QeBkB"
      , name = "137/Pfad der Angst"
      , urlToOpen = "https://open.spotify.com/album/3m7fR2wOkytZHq9m4QeBkB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fd62ba11135fd7b4be4cd678" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fd62ba11135fd7b4be4cd678"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fd62ba11135fd7b4be4cd678"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5HiWGQmaCRaxdaon49Iw9S"
      , name = "136/und das versunkene Dorf"
      , urlToOpen = "https://open.spotify.com/album/5HiWGQmaCRaxdaon49Iw9S"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27373bbf4a75a61d03ffe08c091" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0273bbf4a75a61d03ffe08c091"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485173bbf4a75a61d03ffe08c091"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0V8G13FK8oGJV8Nde4Q2M1"
      , name = "135/Fluch des Piraten"
      , urlToOpen = "https://open.spotify.com/album/0V8G13FK8oGJV8Nde4Q2M1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c2461c7126aca0c41330b030" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c2461c7126aca0c41330b030"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c2461c7126aca0c41330b030"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0TmWLedytkxVuP9b5Hqeqq"
      , name = "135/Fluch des Piraten"
      , urlToOpen = "https://open.spotify.com/album/0TmWLedytkxVuP9b5Hqeqq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27378896011fd97eb63ca6fa654" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0278896011fd97eb63ca6fa654"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485178896011fd97eb63ca6fa654"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1Cta130Rwp5vH1ddfAChbU"
      , name = "134/Der tote Mönch"
      , urlToOpen = "https://open.spotify.com/album/1Cta130Rwp5vH1ddfAChbU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c2e62b4b930b54db934dbc1b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c2e62b4b930b54db934dbc1b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c2e62b4b930b54db934dbc1b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1juMQy6yZVmk9Za6HeiicB"
      , name = "133/Fels der Dämonen"
      , urlToOpen = "https://open.spotify.com/album/1juMQy6yZVmk9Za6HeiicB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27389c779dd1a32247b311a481f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0289c779dd1a32247b311a481f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485189c779dd1a32247b311a481f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "23wcElHGWpunC23ggr4PcW"
      , name = "132/Spuk im Netz"
      , urlToOpen = "https://open.spotify.com/album/23wcElHGWpunC23ggr4PcW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ebff189258d828960ad77f14" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ebff189258d828960ad77f14"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ebff189258d828960ad77f14"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4eorcDi9eRfsi7X0A91Z7u"
      , name = "131/Haus des Schreckens"
      , urlToOpen = "https://open.spotify.com/album/4eorcDi9eRfsi7X0A91Z7u"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731af90c3630a08b8a3ec60703" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021af90c3630a08b8a3ec60703"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511af90c3630a08b8a3ec60703"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5l5CFSjzSdhbflqmplcTFX"
      , name = "130/Der Fluch des Drachen"
      , urlToOpen = "https://open.spotify.com/album/5l5CFSjzSdhbflqmplcTFX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27364d02b215ce0e4f6686155fd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0264d02b215ce0e4f6686155fd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485164d02b215ce0e4f6686155fd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0sCs2S5YTEN0UT1fwWpvKw"
      , name = "Das verfluchte Schloss"
      , urlToOpen = "https://open.spotify.com/album/0sCs2S5YTEN0UT1fwWpvKw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737e726f5a4d48169ea5ce8f72" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027e726f5a4d48169ea5ce8f72"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517e726f5a4d48169ea5ce8f72"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1lD4RdnibVS7QhtZqCal9E"
      , name = "129/SMS aus dem Grab"
      , urlToOpen = "https://open.spotify.com/album/1lD4RdnibVS7QhtZqCal9E"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a174478a2c172a88f3b5ddfd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a174478a2c172a88f3b5ddfd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a174478a2c172a88f3b5ddfd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3XXYXmCEe185oHxigCRo97"
      , name = "128/Schatten über Hollywood"
      , urlToOpen = "https://open.spotify.com/album/3XXYXmCEe185oHxigCRo97"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b47cbcad32c5efdb8fd95789" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b47cbcad32c5efdb8fd95789"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b47cbcad32c5efdb8fd95789"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0mp5HVWlYinEYa7Y4Q2vau"
      , name = "127/Schwarze Madonna"
      , urlToOpen = "https://open.spotify.com/album/0mp5HVWlYinEYa7Y4Q2vau"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27313a17d36e8f6f8832dc622fb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0213a17d36e8f6f8832dc622fb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485113a17d36e8f6f8832dc622fb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0AnyLaLPx339iGaxjqVfob"
      , name = "126/Schrecken aus dem Moor"
      , urlToOpen = "https://open.spotify.com/album/0AnyLaLPx339iGaxjqVfob"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739f9cca8534e700550610316c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029f9cca8534e700550610316c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519f9cca8534e700550610316c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0sIRyuExi7jBQmOpHyyY78"
      , name = "125/Feuermond"
      , urlToOpen = "https://open.spotify.com/album/0sIRyuExi7jBQmOpHyyY78"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27323eb1a466879a783317b586e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0223eb1a466879a783317b586e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485123eb1a466879a783317b586e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0LoesJ9VnJPrlvIDz4u4Xt"
      , name = "124/Geister-Canyon"
      , urlToOpen = "https://open.spotify.com/album/0LoesJ9VnJPrlvIDz4u4Xt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273773e640683d4123d7e6b76c0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02773e640683d4123d7e6b76c0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851773e640683d4123d7e6b76c0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3HgetGSMzg6bGM6b67YZcj"
      , name = "123/Fußballfieber"
      , urlToOpen = "https://open.spotify.com/album/3HgetGSMzg6bGM6b67YZcj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c7bd58873b275bc532c8f1ab" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c7bd58873b275bc532c8f1ab"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c7bd58873b275bc532c8f1ab"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "68NWcgqeCQMZ3QcPJXBhzH"
      , name = "122/und der Geisterzug"
      , urlToOpen = "https://open.spotify.com/album/68NWcgqeCQMZ3QcPJXBhzH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273be232fbe5735eead5214cac8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02be232fbe5735eead5214cac8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851be232fbe5735eead5214cac8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "59WTBKsGdomSgMztadw3uL"
      , name = "Das Geheimnis der Geisterinsel"
      , urlToOpen = "https://open.spotify.com/album/59WTBKsGdomSgMztadw3uL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d12afb15026dc752cf624a5c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d12afb15026dc752cf624a5c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d12afb15026dc752cf624a5c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6d21lwV9Imn3ObWUyV1UN2"
      , name = "121/Spur ins Nichts"
      , urlToOpen = "https://open.spotify.com/album/6d21lwV9Imn3ObWUyV1UN2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e54726f6d0ffb620ba37c245" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e54726f6d0ffb620ba37c245"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e54726f6d0ffb620ba37c245"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6fVTJQKJBku1yaOmZOnfwg"
      , name = "120/Der schwarze Skorpion"
      , urlToOpen = "https://open.spotify.com/album/6fVTJQKJBku1yaOmZOnfwg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c49db9ae4ed6297801ff06ce" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c49db9ae4ed6297801ff06ce"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c49db9ae4ed6297801ff06ce"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1GKXpMQRKEyZI8pL62VUIP"
      , name = "118/Das düstere Vermächtnis"
      , urlToOpen = "https://open.spotify.com/album/1GKXpMQRKEyZI8pL62VUIP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273381a69a5e31b95da673fd94d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02381a69a5e31b95da673fd94d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851381a69a5e31b95da673fd94d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3piMnopGsrEAKd1EZxsU3i"
      , name = "116/Codename: Cobra"
      , urlToOpen = "https://open.spotify.com/album/3piMnopGsrEAKd1EZxsU3i"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732a5ee3faae3f2269976e8dfc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022a5ee3faae3f2269976e8dfc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512a5ee3faae3f2269976e8dfc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3rxr4SLE2EG0EAlpSeI99o"
      , name = "117/Der finstere Rivale"
      , urlToOpen = "https://open.spotify.com/album/3rxr4SLE2EG0EAlpSeI99o"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273087e42e930f26bb7737e0bd5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02087e42e930f26bb7737e0bd5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851087e42e930f26bb7737e0bd5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5Hafee7JOUqNVqtsrCtrTZ"
      , name = "115/Auf tödlichem Kurs"
      , urlToOpen = "https://open.spotify.com/album/5Hafee7JOUqNVqtsrCtrTZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e6547000f12a054eb77fc963" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e6547000f12a054eb77fc963"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e6547000f12a054eb77fc963"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5L2KCw21QT3JKg1KKuqSeF"
      , name = "114/Die Villa der Toten"
      , urlToOpen = "https://open.spotify.com/album/5L2KCw21QT3JKg1KKuqSeF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735fd7a3b166aed5b9e94b957f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025fd7a3b166aed5b9e94b957f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515fd7a3b166aed5b9e94b957f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3bFvjy9IyWd7GrzN2dr0Hi"
      , name = "113/Das Auge des Drachen"
      , urlToOpen = "https://open.spotify.com/album/3bFvjy9IyWd7GrzN2dr0Hi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732de3607281551ed6006a3a31" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022de3607281551ed6006a3a31"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512de3607281551ed6006a3a31"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0WBhXS0uAYuL1sYb6vjYeS"
      , name = "112/Schlucht der Dämonen"
      , urlToOpen = "https://open.spotify.com/album/0WBhXS0uAYuL1sYb6vjYeS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cbbe8a5338c426a0f2924a28" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cbbe8a5338c426a0f2924a28"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cbbe8a5338c426a0f2924a28"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7b9OiVsktCZyldiAnjkVDx"
      , name = "111/Die Höhle des Grauens"
      , urlToOpen = "https://open.spotify.com/album/7b9OiVsktCZyldiAnjkVDx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735a931f16edad1c6d9cc1bb53" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025a931f16edad1c6d9cc1bb53"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515a931f16edad1c6d9cc1bb53"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1OBHPhBUih26oQTqxLvJTQ"
      , name = "110/Panik im Park"
      , urlToOpen = "https://open.spotify.com/album/1OBHPhBUih26oQTqxLvJTQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732353b202c0b40d82be03a9ef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022353b202c0b40d82be03a9ef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512353b202c0b40d82be03a9ef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4RZllDAKF3DeDz6jZJFXTa"
      , name = "109/Gefährliches Quiz"
      , urlToOpen = "https://open.spotify.com/album/4RZllDAKF3DeDz6jZJFXTa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c4278034761a0813a6a3e738" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c4278034761a0813a6a3e738"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c4278034761a0813a6a3e738"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3v4W4AFaI8uO7J88ojaSkS"
      , name = "108/Die sieben Tore"
      , urlToOpen = "https://open.spotify.com/album/3v4W4AFaI8uO7J88ojaSkS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273df2af81904cbb1dbc2df2e8d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02df2af81904cbb1dbc2df2e8d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851df2af81904cbb1dbc2df2e8d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3kBby5GJMI4U97XljKcPFD"
      , name = "107/und der Schatz der Mönche"
      , urlToOpen = "https://open.spotify.com/album/3kBby5GJMI4U97XljKcPFD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27392b901c952011fd97448b86f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0292b901c952011fd97448b86f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485192b901c952011fd97448b86f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4uJPgDMOIRfoAumwwmpRbR"
      , name = "Master of Chess"
      , urlToOpen = "https://open.spotify.com/album/4uJPgDMOIRfoAumwwmpRbR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273398f444d7f49e1b44c5c8acc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02398f444d7f49e1b44c5c8acc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851398f444d7f49e1b44c5c8acc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4eX1wH67TDcYPZ1ZsjtPb6"
      , name = "106/Der Mann ohne Kopf"
      , urlToOpen = "https://open.spotify.com/album/4eX1wH67TDcYPZ1ZsjtPb6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730098553cfb28f108dba3a502" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020098553cfb28f108dba3a502"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510098553cfb28f108dba3a502"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Mi4Smq7Fn8qNOg6Xnf0In"
      , name = "105/Der Nebelberg"
      , urlToOpen = "https://open.spotify.com/album/6Mi4Smq7Fn8qNOg6Xnf0In"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d0ae111071f608da802435d1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d0ae111071f608da802435d1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d0ae111071f608da802435d1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6joRNVLN69v3eSnxM86BSM"
      , name = "104/Gift per e-mail"
      , urlToOpen = "https://open.spotify.com/album/6joRNVLN69v3eSnxM86BSM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27319f7e2f7a86ca99d5575d0a5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0219f7e2f7a86ca99d5575d0a5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485119f7e2f7a86ca99d5575d0a5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4ADdmpObDUmBdvyJ9oNz5o"
      , name = "103/Das Erbe des Meisterdiebes"
      , urlToOpen = "https://open.spotify.com/album/4ADdmpObDUmBdvyJ9oNz5o"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273eecb447a0575319bd4ac9e1a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02eecb447a0575319bd4ac9e1a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851eecb447a0575319bd4ac9e1a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3NYWEuwAPt4PIJ4OeNxmzO"
      , name = "102/Doppelte Täuschung"
      , urlToOpen = "https://open.spotify.com/album/3NYWEuwAPt4PIJ4OeNxmzO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27337f76af0db2d6a179f028cae" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0237f76af0db2d6a179f028cae"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485137f76af0db2d6a179f028cae"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1DZAe0qMw8Pq9EPoX6gETA"
      , name = "101/und das Hexen-Handy"
      , urlToOpen = "https://open.spotify.com/album/1DZAe0qMw8Pq9EPoX6gETA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d34be4cc65fa0efc47f8b3b1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d34be4cc65fa0efc47f8b3b1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d34be4cc65fa0efc47f8b3b1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4KXnXnpFRnQsjeZHpNC7X9"
      , name = "Super-Papagei 2004"
      , urlToOpen = "https://open.spotify.com/album/4KXnXnpFRnQsjeZHpNC7X9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731d00680cbaa231468512c228" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021d00680cbaa231468512c228"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511d00680cbaa231468512c228"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6zwBnyiy9Hy9TAser0DOuL"
      , name = "100/Toteninsel"
      , urlToOpen = "https://open.spotify.com/album/6zwBnyiy9Hy9TAser0DOuL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27380945825ee2a30bc4349dc5a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0280945825ee2a30bc4349dc5a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485180945825ee2a30bc4349dc5a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3haGZZ8x7PyaGxiqcLmLf9"
      , name = "099/Rufmord"
      , urlToOpen = "https://open.spotify.com/album/3haGZZ8x7PyaGxiqcLmLf9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734c5078f069ebe7ef846a4472" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024c5078f069ebe7ef846a4472"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514c5078f069ebe7ef846a4472"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4C4o7tHpT20QrdsvmI70uI"
      , name = "098/Tal des Schreckens"
      , urlToOpen = "https://open.spotify.com/album/4C4o7tHpT20QrdsvmI70uI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734f9c9e397bc7f074772bd500" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024f9c9e397bc7f074772bd500"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514f9c9e397bc7f074772bd500"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2bfJa4PRKVb7as86HZv8Df"
      , name = "097/Insektenstachel"
      , urlToOpen = "https://open.spotify.com/album/2bfJa4PRKVb7as86HZv8Df"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273588d4b40847324a1a3bcc43b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02588d4b40847324a1a3bcc43b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851588d4b40847324a1a3bcc43b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5ub4r9Q0YVMrWuOEesu6dR"
      , name = "096/und der rote Rächer"
      , urlToOpen = "https://open.spotify.com/album/5ub4r9Q0YVMrWuOEesu6dR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27346ee395d079d72f171bef653" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0246ee395d079d72f171bef653"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485146ee395d079d72f171bef653"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3UHj03eU7OnDuMVCTLbmcj"
      , name = "094/Das schwarze Monster"
      , urlToOpen = "https://open.spotify.com/album/3UHj03eU7OnDuMVCTLbmcj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738d72e8ad25c9b53e82b34cbb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028d72e8ad25c9b53e82b34cbb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518d72e8ad25c9b53e82b34cbb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7a9rwqPkVdU4FC2cWFudVO"
      , name = "093/und das Geisterschiff"
      , urlToOpen = "https://open.spotify.com/album/7a9rwqPkVdU4FC2cWFudVO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cb17fbf445910767655a3028" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cb17fbf445910767655a3028"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cb17fbf445910767655a3028"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7yMRFgR8FRyWwiLHzQQa2B"
      , name = "092/Todesflug"
      , urlToOpen = "https://open.spotify.com/album/7yMRFgR8FRyWwiLHzQQa2B"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b4e43deef6192a9bb631fc63" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b4e43deef6192a9bb631fc63"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b4e43deef6192a9bb631fc63"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Jh7gzQaOscoFndb3raq2l"
      , name = "091/Labyrinth der Götter"
      , urlToOpen = "https://open.spotify.com/album/0Jh7gzQaOscoFndb3raq2l"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273654d32b58e16b58c804b5c10" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02654d32b58e16b58c804b5c10"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851654d32b58e16b58c804b5c10"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2dlgtHB8z7ZhSl1fsSb0Ic"
      , name = "090/Der Feuerteufel"
      , urlToOpen = "https://open.spotify.com/album/2dlgtHB8z7ZhSl1fsSb0Ic"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733bf099f684b8a9a054cc4963" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023bf099f684b8a9a054cc4963"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513bf099f684b8a9a054cc4963"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3TcIn19pVz5LXE8UleuLuX"
      , name = "089/Tödliche Spur"
      , urlToOpen = "https://open.spotify.com/album/3TcIn19pVz5LXE8UleuLuX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27342f79d24a75f555cc7b0e5e0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0242f79d24a75f555cc7b0e5e0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485142f79d24a75f555cc7b0e5e0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3CZCwdMpj2jnjI43ZlnY5T"
      , name = "088/Vampir im Internet"
      , urlToOpen = "https://open.spotify.com/album/3CZCwdMpj2jnjI43ZlnY5T"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ade7f6d660fda30327d3f385" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ade7f6d660fda30327d3f385"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ade7f6d660fda30327d3f385"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1KpWkUQaj5ECJsrb8SrPl4"
      , name = "087/Wolfsgesicht"
      , urlToOpen = "https://open.spotify.com/album/1KpWkUQaj5ECJsrb8SrPl4"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27344c680f940d157eb316f4894" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0244c680f940d157eb316f4894"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485144c680f940d157eb316f4894"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4uF9MjchYgq5jjPi5x5YZy"
      , name = "086/Nacht in Angst"
      , urlToOpen = "https://open.spotify.com/album/4uF9MjchYgq5jjPi5x5YZy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27326b7ae0b099c6a24717666ca" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0226b7ae0b099c6a24717666ca"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485126b7ae0b099c6a24717666ca"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2eeodcwD9HXpcA2rvoFkIq"
      , name = "085/Feuerturm"
      , urlToOpen = "https://open.spotify.com/album/2eeodcwD9HXpcA2rvoFkIq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d67e953a55891e24dca35560" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d67e953a55891e24dca35560"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d67e953a55891e24dca35560"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3bhsXwKIDwVK5LTkDCICp0"
      , name = "084/Musik des Teufels"
      , urlToOpen = "https://open.spotify.com/album/3bhsXwKIDwVK5LTkDCICp0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734c2231ecc6f5a334d7f7fad2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024c2231ecc6f5a334d7f7fad2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514c2231ecc6f5a334d7f7fad2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3yofHdHiOLtVZlxWCZ4XBB"
      , name = "083/Meuterei auf hoher See"
      , urlToOpen = "https://open.spotify.com/album/3yofHdHiOLtVZlxWCZ4XBB"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730d0eabdf92a0297d227819e9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020d0eabdf92a0297d227819e9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510d0eabdf92a0297d227819e9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7iysTnwaaFrPPWAuUyyi0c"
      , name = "082/Die Karten des Bösen"
      , urlToOpen = "https://open.spotify.com/album/7iysTnwaaFrPPWAuUyyi0c"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734caa5f8a9f018ddb3f91e23e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024caa5f8a9f018ddb3f91e23e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514caa5f8a9f018ddb3f91e23e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2s5u6hCaMpTIvZtBRvQzha"
      , name = "081/Verdeckte Fouls"
      , urlToOpen = "https://open.spotify.com/album/2s5u6hCaMpTIvZtBRvQzha"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f3011b0648c8f650e822476c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f3011b0648c8f650e822476c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f3011b0648c8f650e822476c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4izXuApLzBWtWHrFqgcrxL"
      , name = "080/Geheimakte Ufo"
      , urlToOpen = "https://open.spotify.com/album/4izXuApLzBWtWHrFqgcrxL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733b114ffdd62ab393de5354f0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023b114ffdd62ab393de5354f0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513b114ffdd62ab393de5354f0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1rDYlXZy6vN4wqqQ6buqOr"
      , name = "079/Im Bann des Voodoo"
      , urlToOpen = "https://open.spotify.com/album/1rDYlXZy6vN4wqqQ6buqOr"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27320cb5ae09b0daea1ad4c53c3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0220cb5ae09b0daea1ad4c53c3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485120cb5ae09b0daea1ad4c53c3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6t7Y1H4dUM0d4JycenVskN"
      , name = "078/Das leere Grab"
      , urlToOpen = "https://open.spotify.com/album/6t7Y1H4dUM0d4JycenVskN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e677666d78d8b94f9fe18088" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e677666d78d8b94f9fe18088"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e677666d78d8b94f9fe18088"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3CMN8Y4kjoG4sFwlOEpfsV"
      , name = "077/Pistenteufel"
      , urlToOpen = "https://open.spotify.com/album/3CMN8Y4kjoG4sFwlOEpfsV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734cabd18fdc0cf778426d0553" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024cabd18fdc0cf778426d0553"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514cabd18fdc0cf778426d0553"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6RDPGc2budsdTw1lj8f2O5"
      , name = "076/Stimmen aus dem Nichts"
      , urlToOpen = "https://open.spotify.com/album/6RDPGc2budsdTw1lj8f2O5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273eb1fdaace1fbbdf693b21e12" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02eb1fdaace1fbbdf693b21e12"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851eb1fdaace1fbbdf693b21e12"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2IqfdlQamN3vCWN3CKLEVI"
      , name = "075/Die Spur des Raben"
      , urlToOpen = "https://open.spotify.com/album/2IqfdlQamN3vCWN3CKLEVI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ce89fa1312e47c5c7536acfd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ce89fa1312e47c5c7536acfd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ce89fa1312e47c5c7536acfd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "69VLqtWA1bpguYRCFRAxQl"
      , name = "074/und das brennende Schwert"
      , urlToOpen = "https://open.spotify.com/album/69VLqtWA1bpguYRCFRAxQl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d9e08cc5f3d5080185f1692f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d9e08cc5f3d5080185f1692f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d9e08cc5f3d5080185f1692f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1K8kXLhNnHSdPvtUwf74DE"
      , name = "073/Poltergeist"
      , urlToOpen = "https://open.spotify.com/album/1K8kXLhNnHSdPvtUwf74DE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273619dc63786747c9dc030d6f6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02619dc63786747c9dc030d6f6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851619dc63786747c9dc030d6f6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2GQjkF0ceIse6jVZkUuAQc"
      , name = "072/Dreckiger Deal"
      , urlToOpen = "https://open.spotify.com/album/2GQjkF0ceIse6jVZkUuAQc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27358f27abd2d23ca13e48eb54f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0258f27abd2d23ca13e48eb54f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485158f27abd2d23ca13e48eb54f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6EEN6onzbHIOxnwUkGfKhv"
      , name = "071/Die verschwundene Seglerin"
      , urlToOpen = "https://open.spotify.com/album/6EEN6onzbHIOxnwUkGfKhv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f2abdc24f93b2ea1f583b09a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f2abdc24f93b2ea1f583b09a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f2abdc24f93b2ea1f583b09a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4mlQEwk6I0XuksZCYTtatz"
      , name = "070/Schüsse aus dem Dunkel"
      , urlToOpen = "https://open.spotify.com/album/4mlQEwk6I0XuksZCYTtatz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e5d817cd9ad8cfcfd9125df6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e5d817cd9ad8cfcfd9125df6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e5d817cd9ad8cfcfd9125df6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2erJcBofKBO6GFMqDPppsU"
      , name = "069/Späte Rache"
      , urlToOpen = "https://open.spotify.com/album/2erJcBofKBO6GFMqDPppsU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a0fcc7d291d25cb9dc61c216" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a0fcc7d291d25cb9dc61c216"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a0fcc7d291d25cb9dc61c216"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "21pUsEhxssm6fvumGFmi35"
      , name = "068/und der Schatz im Bergsee"
      , urlToOpen = "https://open.spotify.com/album/21pUsEhxssm6fvumGFmi35"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273454154cd9c03cec5238d1e94" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02454154cd9c03cec5238d1e94"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851454154cd9c03cec5238d1e94"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7Hjk98j1FSrHV5IHWmeeFh"
      , name = "067/und das Geheimnis der Särge"
      , urlToOpen = "https://open.spotify.com/album/7Hjk98j1FSrHV5IHWmeeFh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273cca08a3eabfc454ebeed3711" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02cca08a3eabfc454ebeed3711"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851cca08a3eabfc454ebeed3711"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6qj4LD0zotutkIgEg9OvDj"
      , name = "066/und die Schattenmänner"
      , urlToOpen = "https://open.spotify.com/album/6qj4LD0zotutkIgEg9OvDj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737babb9909a09316ec73ccaad" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027babb9909a09316ec73ccaad"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517babb9909a09316ec73ccaad"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "62z7yW4RKhhuAp0RklmNvc"
      , name = "065/Diamantenschmuggel"
      , urlToOpen = "https://open.spotify.com/album/62z7yW4RKhhuAp0RklmNvc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731f529295cce35763989fd148" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021f529295cce35763989fd148"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511f529295cce35763989fd148"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0tmMvsGyWRzVckCYgkvve3"
      , name = "064/Geisterstadt"
      , urlToOpen = "https://open.spotify.com/album/0tmMvsGyWRzVckCYgkvve3"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27304ba4780b66f258a3cd441c9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0204ba4780b66f258a3cd441c9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485104ba4780b66f258a3cd441c9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5GPTZKrD7eaCp9p6VOBuIN"
      , name = "063/Fußball-Gangster"
      , urlToOpen = "https://open.spotify.com/album/5GPTZKrD7eaCp9p6VOBuIN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d8487e9880060cc95729431b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d8487e9880060cc95729431b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d8487e9880060cc95729431b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0biXUv1uGUaVsPcw8nAZCY"
      , name = "062/Spuk im Hotel"
      , urlToOpen = "https://open.spotify.com/album/0biXUv1uGUaVsPcw8nAZCY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273752fdd90d486ca2db672b679" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02752fdd90d486ca2db672b679"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851752fdd90d486ca2db672b679"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "26M4ktHp3isOX6XJazAxPn"
      , name = "061/und die Rache des Tigers"
      , urlToOpen = "https://open.spotify.com/album/26M4ktHp3isOX6XJazAxPn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f4b8620352e4ad4f881fcff2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f4b8620352e4ad4f881fcff2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f4b8620352e4ad4f881fcff2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7cBoiWgh1bTMZmCwJE0eMu"
      , name = "060/Dopingmixer"
      , urlToOpen = "https://open.spotify.com/album/7cBoiWgh1bTMZmCwJE0eMu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f3a2b7f3d1470290d598aecf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f3a2b7f3d1470290d598aecf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f3a2b7f3d1470290d598aecf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2qcA1EqAoUsqxXqIivY6Zc"
      , name = "059/Giftiges Wasser"
      , urlToOpen = "https://open.spotify.com/album/2qcA1EqAoUsqxXqIivY6Zc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ce7a7ca0406350458176cae7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ce7a7ca0406350458176cae7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ce7a7ca0406350458176cae7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6DWykdlgf60Mq02hPAGYVD"
      , name = "058/und der verrückte Maler"
      , urlToOpen = "https://open.spotify.com/album/6DWykdlgf60Mq02hPAGYVD"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733c87f9c84d96214175193ded" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023c87f9c84d96214175193ded"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513c87f9c84d96214175193ded"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5W6dRiaeSVE7zUBYHbepak"
      , name = "057/Tatort Zirkus"
      , urlToOpen = "https://open.spotify.com/album/5W6dRiaeSVE7zUBYHbepak"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733da006f111c8c1424c4041e0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023da006f111c8c1424c4041e0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513da006f111c8c1424c4041e0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3fotka2Hbq0N7V9KKWIDdw"
      , name = "056/Angriff der Computer-Viren"
      , urlToOpen = "https://open.spotify.com/album/3fotka2Hbq0N7V9KKWIDdw"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737ad14d2b95a8d088ea3fec28" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027ad14d2b95a8d088ea3fec28"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517ad14d2b95a8d088ea3fec28"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4oH2GUWlSSsSgVkxyPVHX1"
      , name = "055/Gekaufte Spieler"
      , urlToOpen = "https://open.spotify.com/album/4oH2GUWlSSsSgVkxyPVHX1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273676bdcded23a5f0a5bb034a2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02676bdcded23a5f0a5bb034a2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851676bdcded23a5f0a5bb034a2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1Fg15cBLFliy6Kr60QqRan"
      , name = "054/Gefahr im Verzug"
      , urlToOpen = "https://open.spotify.com/album/1Fg15cBLFliy6Kr60QqRan"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d86adc8ae21f94f9e0083037" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d86adc8ae21f94f9e0083037"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d86adc8ae21f94f9e0083037"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0F9ebKwTd5RNZZOu49lWuF"
      , name = "053/und die Automafia"
      , urlToOpen = "https://open.spotify.com/album/0F9ebKwTd5RNZZOu49lWuF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738388f7155e69af21b68b05e7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028388f7155e69af21b68b05e7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518388f7155e69af21b68b05e7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3pXJh2A9gYzNt22rEIE5q7"
      , name = "052/und die Musikpiraten"
      , urlToOpen = "https://open.spotify.com/album/3pXJh2A9gYzNt22rEIE5q7"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733a999a94e6618455692574b8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023a999a94e6618455692574b8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513a999a94e6618455692574b8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "71kiy6INV3LzsCddpTZoHf"
      , name = "051/und der riskante Ritt"
      , urlToOpen = "https://open.spotify.com/album/71kiy6INV3LzsCddpTZoHf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d93183ce852662f21f208c93" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d93183ce852662f21f208c93"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d93183ce852662f21f208c93"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6DKfjDIB1BSYRGAi2YJYm3"
      , name = "050/und der verschwundene Filmstar"
      , urlToOpen = "https://open.spotify.com/album/6DKfjDIB1BSYRGAi2YJYm3"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737656b06426382e26e7927ce3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027656b06426382e26e7927ce3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517656b06426382e26e7927ce3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7t2SteAH5OnLLC1ghTAmka"
      , name = "049/und die Comic-Diebe"
      , urlToOpen = "https://open.spotify.com/album/7t2SteAH5OnLLC1ghTAmka"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730b7ef9d9d81296a8fb03b2e3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020b7ef9d9d81296a8fb03b2e3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510b7ef9d9d81296a8fb03b2e3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5IRxm1lo35PttzU8YLslZy"
      , name = "048/und die gefährlichen Fässer"
      , urlToOpen = "https://open.spotify.com/album/5IRxm1lo35PttzU8YLslZy"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27385076eb654debecdff9f1966" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0285076eb654debecdff9f1966"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485185076eb654debecdff9f1966"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3iWNsrEs9D0FFlKFfscdvL"
      , name = "047/und der giftige Gockel"
      , urlToOpen = "https://open.spotify.com/album/3iWNsrEs9D0FFlKFfscdvL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739a5d121daae0aea583baf896" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029a5d121daae0aea583baf896"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519a5d121daae0aea583baf896"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6YX4i7aMCYmn20zvAFM3lG"
      , name = "046/und der schrullige Millionär"
      , urlToOpen = "https://open.spotify.com/album/6YX4i7aMCYmn20zvAFM3lG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a2c864b4cba739aa335de1db" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a2c864b4cba739aa335de1db"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a2c864b4cba739aa335de1db"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "39mWWzaUZp0AXyN9Vnp4od"
      , name = "045/und das Gold der Wikinger"
      , urlToOpen = "https://open.spotify.com/album/39mWWzaUZp0AXyN9Vnp4od"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273deab510f8978c1ab101f8719" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02deab510f8978c1ab101f8719"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851deab510f8978c1ab101f8719"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6JNNLdq9ELeKENK3RmxLWQ"
      , name = "044/und der gestohlene Preis"
      , urlToOpen = "https://open.spotify.com/album/6JNNLdq9ELeKENK3RmxLWQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738d32e333fed9e96d0c8565d2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028d32e333fed9e96d0c8565d2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518d32e333fed9e96d0c8565d2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "48QVzskevXtA0KpJjXzvb1"
      , name = "043/und der höllische Werwolf"
      , urlToOpen = "https://open.spotify.com/album/48QVzskevXtA0KpJjXzvb1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a9a124f568bb71f006233405" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a9a124f568bb71f006233405"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a9a124f568bb71f006233405"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "24bba3w45LGGm7ps3qonkc"
      , name = "042/und der weinende Sarg"
      , urlToOpen = "https://open.spotify.com/album/24bba3w45LGGm7ps3qonkc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a656cae556eb72350db10422" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a656cae556eb72350db10422"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a656cae556eb72350db10422"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5KUXX8H2LNsuik46M5XLx0"
      , name = "041/und das Volk der Winde"
      , urlToOpen = "https://open.spotify.com/album/5KUXX8H2LNsuik46M5XLx0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273326f163e8c446829641d4d8e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02326f163e8c446829641d4d8e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851326f163e8c446829641d4d8e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2IIw1KESZrJQBFdZQAWcKY"
      , name = "040/und der Automarder"
      , urlToOpen = "https://open.spotify.com/album/2IIw1KESZrJQBFdZQAWcKY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27305282c5247237cb6957d623d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0205282c5247237cb6957d623d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485105282c5247237cb6957d623d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0AKPkUh4ElyZNipc0lZoiR"
      , name = "039/und die Perlenvögel"
      , urlToOpen = "https://open.spotify.com/album/0AKPkUh4ElyZNipc0lZoiR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ee8a7e5179348160a2a58fa4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ee8a7e5179348160a2a58fa4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ee8a7e5179348160a2a58fa4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6d3Pavm0enVICdOvBEqxYA"
      , name = "038/und der unsichtbare Gegner"
      , urlToOpen = "https://open.spotify.com/album/6d3Pavm0enVICdOvBEqxYA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e87d75cd1871f89732c2448b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e87d75cd1871f89732c2448b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e87d75cd1871f89732c2448b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6R4gnRHXKgw2cxneWgTiEL"
      , name = "037/und der heimliche Hehler"
      , urlToOpen = "https://open.spotify.com/album/6R4gnRHXKgw2cxneWgTiEL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d323602889318c69616b97f6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d323602889318c69616b97f6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d323602889318c69616b97f6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4R24oyyqxGkczNpqWGCXBZ"
      , name = "036/und der Super-Wal"
      , urlToOpen = "https://open.spotify.com/album/4R24oyyqxGkczNpqWGCXBZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730f20e31dba0ce8c04a76ba15" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020f20e31dba0ce8c04a76ba15"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510f20e31dba0ce8c04a76ba15"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2REEfC6tVMiYv1eKMlGiOX"
      , name = "035/und der Höhlenmensch"
      , urlToOpen = "https://open.spotify.com/album/2REEfC6tVMiYv1eKMlGiOX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e1bd55376650652d72db0c19" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e1bd55376650652d72db0c19"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e1bd55376650652d72db0c19"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2L18qTB1EfS4FuBk2M6QwV"
      , name = "034/und der rote Pirat"
      , urlToOpen = "https://open.spotify.com/album/2L18qTB1EfS4FuBk2M6QwV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738dc647cb547bde4b45d3e6dd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028dc647cb547bde4b45d3e6dd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518dc647cb547bde4b45d3e6dd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1imKVIfJIM0vKNymevqKjP"
      , name = "033/und die bedrohte Ranch"
      , urlToOpen = "https://open.spotify.com/album/1imKVIfJIM0vKNymevqKjP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738159c7cd9cc9d2b38a3c2f9b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028159c7cd9cc9d2b38a3c2f9b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518159c7cd9cc9d2b38a3c2f9b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7K3VEzD1rm0dgUGBi1i5PW"
      , name = "032/und der Ameisenmensch"
      , urlToOpen = "https://open.spotify.com/album/7K3VEzD1rm0dgUGBi1i5PW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730184c93524a6bd2d3c722d80" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020184c93524a6bd2d3c722d80"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510184c93524a6bd2d3c722d80"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0tPetsUWuZIC0E85x6eVN5"
      , name = "031/und das Narbengesicht"
      , urlToOpen = "https://open.spotify.com/album/0tPetsUWuZIC0E85x6eVN5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730ba222df97d099fb846c3321" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020ba222df97d099fb846c3321"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510ba222df97d099fb846c3321"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0zV9pnaXLuogDr6prsvb4M"
      , name = "030/und das Riff der Haie"
      , urlToOpen = "https://open.spotify.com/album/0zV9pnaXLuogDr6prsvb4M"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736238a5d048e44c91f698a91e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026238a5d048e44c91f698a91e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516238a5d048e44c91f698a91e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5JHijjtr65MjdNOnNvD3Ec"
      , name = "029/Die Originalmusik"
      , urlToOpen = "https://open.spotify.com/album/5JHijjtr65MjdNOnNvD3Ec"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f7641a1768d1d479ef498e96" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f7641a1768d1d479ef498e96"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f7641a1768d1d479ef498e96"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7Dbd2rya9glmBLVxclcU4d"
      , name = "028/und der Doppelgänger"
      , urlToOpen = "https://open.spotify.com/album/7Dbd2rya9glmBLVxclcU4d"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273483740d2f5111b560d127da1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02483740d2f5111b560d127da1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851483740d2f5111b560d127da1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2AisAUu4deLpNi6g6qlTLC"
      , name = "027/und der magische Kreis"
      , urlToOpen = "https://open.spotify.com/album/2AisAUu4deLpNi6g6qlTLC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273438a03c2832248ec4934ddc4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02438a03c2832248ec4934ddc4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851438a03c2832248ec4934ddc4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2NSreywe8UbWo7BJVY3Spk"
      , name = "026/und die Silbermine"
      , urlToOpen = "https://open.spotify.com/album/2NSreywe8UbWo7BJVY3Spk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733992de3d05e2af52f5125ee1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023992de3d05e2af52f5125ee1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513992de3d05e2af52f5125ee1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6RXr8BmKNSK9Zk11k0I7Dl"
      , name = "025/und die singende Schlange"
      , urlToOpen = "https://open.spotify.com/album/6RXr8BmKNSK9Zk11k0I7Dl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733a1b9f502429b809d468075a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023a1b9f502429b809d468075a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513a1b9f502429b809d468075a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "211IEWHi59nUsHx8li8G9r"
      , name = "024/und die silberne Spinne"
      , urlToOpen = "https://open.spotify.com/album/211IEWHi59nUsHx8li8G9r"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27320435a7b108a189265e3f5c6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0220435a7b108a189265e3f5c6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485120435a7b108a189265e3f5c6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "67qFOAxbhNRHEIeOjQ9Zkp"
      , name = "023/und das Aztekenschwert"
      , urlToOpen = "https://open.spotify.com/album/67qFOAxbhNRHEIeOjQ9Zkp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2736c2bba436af8f0693392287e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e026c2bba436af8f0693392287e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048516c2bba436af8f0693392287e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7i50aK2wKvszWNnay4DtxP"
      , name = "022/und der verschwundene Schatz"
      , urlToOpen = "https://open.spotify.com/album/7i50aK2wKvszWNnay4DtxP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733ab5f4d4d51ba4eca891ebd5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023ab5f4d4d51ba4eca891ebd5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513ab5f4d4d51ba4eca891ebd5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4KEZWleMTT8lDaQDLgozFc"
      , name = "095/Botschaft von Geisterhand"
      , urlToOpen = "https://open.spotify.com/album/4KEZWleMTT8lDaQDLgozFc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27356d04f1f087c046da9189c06" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0256d04f1f087c046da9189c06"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485156d04f1f087c046da9189c06"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2koZEkq7vQnHjMP73gVXCo"
      , name = "021/und der tanzende Teufel"
      , urlToOpen = "https://open.spotify.com/album/2koZEkq7vQnHjMP73gVXCo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27325c506f0736d03286670b368" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0225c506f0736d03286670b368"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485125c506f0736d03286670b368"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5ilbdbGu5eQRUIsbslyiLe"
      , name = "020/und die flammende Spur"
      , urlToOpen = "https://open.spotify.com/album/5ilbdbGu5eQRUIsbslyiLe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aa10f94060ce1f0352a0d513" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aa10f94060ce1f0352a0d513"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aa10f94060ce1f0352a0d513"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3JqJ2zIt3UzKug7onmbmAo"
      , name = "019/und der Teufelsberg"
      , urlToOpen = "https://open.spotify.com/album/3JqJ2zIt3UzKug7onmbmAo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ee5e4b11a71edc5c62877ef5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ee5e4b11a71edc5c62877ef5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ee5e4b11a71edc5c62877ef5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1yqICFWBL4l7fJkrFWvfWL"
      , name = "018/und die Geisterinsel"
      , urlToOpen = "https://open.spotify.com/album/1yqICFWBL4l7fJkrFWvfWL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c5d04c7c5441fd77e9791fa7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c5d04c7c5441fd77e9791fa7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c5d04c7c5441fd77e9791fa7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0CMsNalUakIcv6znyVLALr"
      , name = "017/und die gefährliche Erbschaft"
      , urlToOpen = "https://open.spotify.com/album/0CMsNalUakIcv6znyVLALr"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273427b347396b793e22f4b259c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02427b347396b793e22f4b259c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851427b347396b793e22f4b259c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "16dOhg07DVqoSxlS7ToLM5"
      , name = "016/und der Zauberspiegel"
      , urlToOpen = "https://open.spotify.com/album/16dOhg07DVqoSxlS7ToLM5"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27326eed2aeb7d8d27a3fd5bd31" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0226eed2aeb7d8d27a3fd5bd31"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485126eed2aeb7d8d27a3fd5bd31"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2dQYcaTRh5qEYk2oH7WoBC"
      , name = "015/und der rasende Löwe"
      , urlToOpen = "https://open.spotify.com/album/2dQYcaTRh5qEYk2oH7WoBC"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734377c9c6e1b2921537d28aef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024377c9c6e1b2921537d28aef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514377c9c6e1b2921537d28aef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3O5STjjugoL5cNKfeRuBiU"
      , name = "014/und das Bergmonster"
      , urlToOpen = "https://open.spotify.com/album/3O5STjjugoL5cNKfeRuBiU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738a84c23e892ef9539e045a1a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028a84c23e892ef9539e045a1a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518a84c23e892ef9539e045a1a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2AZ7zFBophWEIuBPjAG60I"
      , name = "013/und der lachende Schatten"
      , urlToOpen = "https://open.spotify.com/album/2AZ7zFBophWEIuBPjAG60I"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732ff34dc0745ba2056a2d6fd2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022ff34dc0745ba2056a2d6fd2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512ff34dc0745ba2056a2d6fd2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0bSrvyOjOzFoFJfx3uaFgk"
      , name = "012/und der seltsame Wecker"
      , urlToOpen = "https://open.spotify.com/album/0bSrvyOjOzFoFJfx3uaFgk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27361db3ef53570c46ef3bc86fa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0261db3ef53570c46ef3bc86fa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485161db3ef53570c46ef3bc86fa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "07EhJ6uxWcQQWKeXJ1e8Lb"
      , name = "011/und das Gespensterschloss"
      , urlToOpen = "https://open.spotify.com/album/07EhJ6uxWcQQWKeXJ1e8Lb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737313518ec36070a3a6d4ea5a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027313518ec36070a3a6d4ea5a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517313518ec36070a3a6d4ea5a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4h75QQIxW1etThTuw6vWzg"
      , name = "010/und die flüsternde Mumie"
      , urlToOpen = "https://open.spotify.com/album/4h75QQIxW1etThTuw6vWzg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730d5263d1eedebfe821815b32" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020d5263d1eedebfe821815b32"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510d5263d1eedebfe821815b32"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0aNqdp5ayuUNsOdUwu8x0b"
      , name = "009/und die rätselhaften Bilder"
      , urlToOpen = "https://open.spotify.com/album/0aNqdp5ayuUNsOdUwu8x0b"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27376c25883ce89b0b852faaa35" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0276c25883ce89b0b852faaa35"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485176c25883ce89b0b852faaa35"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6MRsf5IcfqJIogaNqtESnh"
      , name = "008/und der grüne Geist"
      , urlToOpen = "https://open.spotify.com/album/6MRsf5IcfqJIogaNqtESnh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27374e205c46d3b6be37bcdde12" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0274e205c46d3b6be37bcdde12"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485174e205c46d3b6be37bcdde12"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3nGyW4ETDrDpInYEAQCyYS"
      , name = "007/und der unheimliche Drache"
      , urlToOpen = "https://open.spotify.com/album/3nGyW4ETDrDpInYEAQCyYS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e691293acd166f1cda30037a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e691293acd166f1cda30037a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e691293acd166f1cda30037a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "54eP8BYMR270sTqklv83V0"
      , name = "006/und der sprechende Totenkopf"
      , urlToOpen = "https://open.spotify.com/album/54eP8BYMR270sTqklv83V0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ef7f97120b07faed7046c8ae" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ef7f97120b07faed7046c8ae"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ef7f97120b07faed7046c8ae"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5YWM39RnabpxekZuHriTam"
      , name = "005/und der Fluch des Rubins"
      , urlToOpen = "https://open.spotify.com/album/5YWM39RnabpxekZuHriTam"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c26392a38973202a8c883483" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c26392a38973202a8c883483"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c26392a38973202a8c883483"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2w902iYtkf0ipmTImyLlsL"
      , name = "004/und die schwarze Katze"
      , urlToOpen = "https://open.spotify.com/album/2w902iYtkf0ipmTImyLlsL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d172a3a7a6097a6bb8cfe3a8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d172a3a7a6097a6bb8cfe3a8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d172a3a7a6097a6bb8cfe3a8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "61OtrnMm1lqoMgMRb1aw7g"
      , name = "003/und der Karpatenhund"
      , urlToOpen = "https://open.spotify.com/album/61OtrnMm1lqoMgMRb1aw7g"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27370a612558ca677da494c1cb2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0270a612558ca677da494c1cb2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485170a612558ca677da494c1cb2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0xldqK4Ocdt8dwQSxUzt6x"
      , name = "002/und der Phantomsee"
      , urlToOpen = "https://open.spotify.com/album/0xldqK4Ocdt8dwQSxUzt6x"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e11332718f590d25361b0354" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e11332718f590d25361b0354"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e11332718f590d25361b0354"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4N9tvSjWfZXx3eHKblYEWQ"
      , name = "001/und der Super-Papagei"
      , urlToOpen = "https://open.spotify.com/album/4N9tvSjWfZXx3eHKblYEWQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733b3c021d48b2f0ee16f7d217" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023b3c021d48b2f0ee16f7d217"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513b3c021d48b2f0ee16f7d217"
              , width = 64 
              , height = 64 
              }
            ]
      }
    ] |> Array.fromList
