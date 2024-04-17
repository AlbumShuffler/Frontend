module AlbumStorageTkkg exposing ( albumStorage, artistInfo )

import Array exposing(Array)
import Albums exposing (Album, ArtistInfo)


artistInfo : ArtistInfo
artistInfo =
  { name = "TKKG" 
  , imageUrl = "https://i.scdn.co/image/ab6761610000e5eb1e8366050ddb70f1267cde51" 
  , shortName = "TKKG"
  , httpFriendlyShortName = "tkkg"
  }


albumStorage : Array Album
albumStorage =
    [ { id = "59BLZAmLAZBmciKqzS7dHr"
      , name = "Folge 231: Knackis streicheln mit der Faust"
      , urlToOpen = "https://open.spotify.com/album/59BLZAmLAZBmciKqzS7dHr"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27374c86cc686ab4f557509bd93"
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0274c86cc686ab4f557509bd93"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485174c86cc686ab4f557509bd93"
              , width = 64 
              , height = 64 
              }
            ] }
    , { id = "0fAjtQp9fFhA4pmFaiYHFt"
      , name = "Folge 230: Die Tesla-Verschwörung"
      , urlToOpen = "https://open.spotify.com/album/0fAjtQp9fFhA4pmFaiYHFt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732fd344afb7f396fda09fa41f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022fd344afb7f396fda09fa41f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512fd344afb7f396fda09fa41f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4J6f92iCMn6Vt537vnYIJJ"
      , name = "Auch Gauner feiern Weihnachten (Adventskalender)"
      , urlToOpen = "https://open.spotify.com/album/4J6f92iCMn6Vt537vnYIJJ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732e32898ea16cb29888daf7ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022e32898ea16cb29888daf7ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512e32898ea16cb29888daf7ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1wFG3EuNbzvdnRa9ldvdPj"
      , name = "Folge 229: Auf den Schwingen des Totenvogels"
      , urlToOpen = "https://open.spotify.com/album/1wFG3EuNbzvdnRa9ldvdPj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732d18cefd5a708811035291ec" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022d18cefd5a708811035291ec"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512d18cefd5a708811035291ec"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4U1BMpYgIMEeuUgt5XY3qe"
      , name = "Folge 228: Das Geld, das niemand wollte"
      , urlToOpen = "https://open.spotify.com/album/4U1BMpYgIMEeuUgt5XY3qe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d9418465290abf6db2b03473" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d9418465290abf6db2b03473"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d9418465290abf6db2b03473"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4nbBHXEO1IHvP7gBCW1I8T"
      , name = "Folge 227: Zwei für Zwölf"
      , urlToOpen = "https://open.spotify.com/album/4nbBHXEO1IHvP7gBCW1I8T"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e1f5cd31868b02fbc8e53e0d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e1f5cd31868b02fbc8e53e0d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e1f5cd31868b02fbc8e53e0d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4FHfFcYa1kkdJcPwVBfurR"
      , name = "Folge 226: Der Täter ist unter uns"
      , urlToOpen = "https://open.spotify.com/album/4FHfFcYa1kkdJcPwVBfurR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739e808d6654e414951b61a152" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029e808d6654e414951b61a152"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519e808d6654e414951b61a152"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3HdsHQ8A2N5qxIV8nBJ1ep"
      , name = "Folge 225: Tanz mit der Giftschlange"
      , urlToOpen = "https://open.spotify.com/album/3HdsHQ8A2N5qxIV8nBJ1ep"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d783fba665d90909b0d3e33f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d783fba665d90909b0d3e33f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d783fba665d90909b0d3e33f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4r0RiXY8OwasAI0D6wDtWg"
      , name = "Folge 224: Bilderdiebe haben kein Gesicht"
      , urlToOpen = "https://open.spotify.com/album/4r0RiXY8OwasAI0D6wDtWg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739f11d30dc14c482c6478e81c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029f11d30dc14c482c6478e81c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519f11d30dc14c482c6478e81c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1IAUjWyGg7xD7DoYhBReb2"
      , name = "Folge 223: Betrüger Super Sauber"
      , urlToOpen = "https://open.spotify.com/album/1IAUjWyGg7xD7DoYhBReb2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273371aaf6fd50fab1b56326b2e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02371aaf6fd50fab1b56326b2e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851371aaf6fd50fab1b56326b2e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2rCVsuxWrsy9SZjUUOIwek"
      , name = "Folge 222: Roter Drache 222"
      , urlToOpen = "https://open.spotify.com/album/2rCVsuxWrsy9SZjUUOIwek"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738c724ffb931a8c201a57872f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028c724ffb931a8c201a57872f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518c724ffb931a8c201a57872f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "47aNHa9s0fPkdWInnNmgNe"
      , name = "Folge 221: Beim Raubzug helfen Ahnungslose"
      , urlToOpen = "https://open.spotify.com/album/47aNHa9s0fPkdWInnNmgNe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ceef48ef5b99e89b8ac35727" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ceef48ef5b99e89b8ac35727"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ceef48ef5b99e89b8ac35727"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "70yAbYpe9FH4XgwDk0rmeE"
      , name = "Schreckliche Weihnacht überall (Adventskalender)"
      , urlToOpen = "https://open.spotify.com/album/70yAbYpe9FH4XgwDk0rmeE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bcd09b3e1d1e3a644d37b253" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bcd09b3e1d1e3a644d37b253"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bcd09b3e1d1e3a644d37b253"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7mhVkGevfl8GCCZsYH7ch2"
      , name = "Folge 220: Attentat am Gämsengrat"
      , urlToOpen = "https://open.spotify.com/album/7mhVkGevfl8GCCZsYH7ch2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737cf07bc595e03d48ecb04c4b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027cf07bc595e03d48ecb04c4b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517cf07bc595e03d48ecb04c4b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "65b6rQAtUIFQAySC4lDKpL"
      , name = "Folge 219: Terror frei Haus"
      , urlToOpen = "https://open.spotify.com/album/65b6rQAtUIFQAySC4lDKpL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ba10062fee95611fb0a2eecf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ba10062fee95611fb0a2eecf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ba10062fee95611fb0a2eecf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1JBdOPbN661RjpdWNm9Xfo"
      , name = "Folge 218: Schutzgeld für Dämonen"
      , urlToOpen = "https://open.spotify.com/album/1JBdOPbN661RjpdWNm9Xfo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a49ad9dcd073ff8a4f3d33b1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a49ad9dcd073ff8a4f3d33b1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a49ad9dcd073ff8a4f3d33b1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6QOwlbBlHs6Cxs8aB6kgGL"
      , name = "Morgen kommt das Weihnachtsgrauen (Adventskalender)"
      , urlToOpen = "https://open.spotify.com/album/6QOwlbBlHs6Cxs8aB6kgGL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737cfb2e93a9f43e3141987ba9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027cfb2e93a9f43e3141987ba9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517cfb2e93a9f43e3141987ba9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4hcEstENZX32EUjk7ehyiL"
      , name = "217/Tödliche Klarinette"
      , urlToOpen = "https://open.spotify.com/album/4hcEstENZX32EUjk7ehyiL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2737cfc78283cc84cfe7e03000e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e027cfc78283cc84cfe7e03000e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048517cfc78283cc84cfe7e03000e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5FvGyMLEy4vIasPH8E0ELE"
      , name = "216/Das Geheimnis im Jagdschloss (Kopfhörer-Hörspiel)"
      , urlToOpen = "https://open.spotify.com/album/5FvGyMLEy4vIasPH8E0ELE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273712b9f44bc246ac5125dc2d9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02712b9f44bc246ac5125dc2d9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851712b9f44bc246ac5125dc2d9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Q2dNebUPEFTWBlD4gxuKL"
      , name = "216/Das Geheimnis im Jagdschloss"
      , urlToOpen = "https://open.spotify.com/album/4Q2dNebUPEFTWBlD4gxuKL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e2fd58747d77b17e48c8ab46" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e2fd58747d77b17e48c8ab46"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e2fd58747d77b17e48c8ab46"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1RNnc029KEtPfTRx7ZUQ2g"
      , name = "215/Verbrechen im Moorsteiner Wald"
      , urlToOpen = "https://open.spotify.com/album/1RNnc029KEtPfTRx7ZUQ2g"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27350440f7e948d381cf5afdafe" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0250440f7e948d381cf5afdafe"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485150440f7e948d381cf5afdafe"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3PncQqKj6wsDOpBTK9HXhV"
      , name = "214/Diamantenrausch auf der A9"
      , urlToOpen = "https://open.spotify.com/album/3PncQqKj6wsDOpBTK9HXhV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ed644a5b2ab53481024a20b1" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ed644a5b2ab53481024a20b1"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ed644a5b2ab53481024a20b1"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "16V0thHq3uD87lNEbxRRs6"
      , name = "213/Das unheimliche Dorf"
      , urlToOpen = "https://open.spotify.com/album/16V0thHq3uD87lNEbxRRs6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273597cae10e5ac7001327a4040" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02597cae10e5ac7001327a4040"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851597cae10e5ac7001327a4040"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5JePYOyA6XhEaukPbQwlCI"
      , name = "212/Tyrannei Kommando Eins"
      , urlToOpen = "https://open.spotify.com/album/5JePYOyA6XhEaukPbQwlCI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27336b7fba491f6129b44a1c48b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0236b7fba491f6129b44a1c48b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485136b7fba491f6129b44a1c48b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2iMSyHHEwiZ3og3WrDFiUj"
      , name = "211/Geiselnahme im Villenviertel"
      , urlToOpen = "https://open.spotify.com/album/2iMSyHHEwiZ3og3WrDFiUj"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27314f56432102e8baf8f7eccb0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0214f56432102e8baf8f7eccb0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485114f56432102e8baf8f7eccb0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5f9cgdn1nSYN0EdsPztwQn"
      , name = "Jede Legende hat ihren Anfang (Hörspiel zum Kinofilm 2019)"
      , urlToOpen = "https://open.spotify.com/album/5f9cgdn1nSYN0EdsPztwQn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b239c7cc7efd4e774886f15f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b239c7cc7efd4e774886f15f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b239c7cc7efd4e774886f15f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1rWuaRKYr1DGZ6wzq0SgAb"
      , name = "210/Raubzug im Casino"
      , urlToOpen = "https://open.spotify.com/album/1rWuaRKYr1DGZ6wzq0SgAb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735a363b4b57ad6a3468386ea2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025a363b4b57ad6a3468386ea2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515a363b4b57ad6a3468386ea2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2wLBVzlRA3dcDqhu9Uxdcc"
      , name = "209/Drohbriefe von Unbekannt"
      , urlToOpen = "https://open.spotify.com/album/2wLBVzlRA3dcDqhu9Uxdcc"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273005c55d5671ba122428f628d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02005c55d5671ba122428f628d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851005c55d5671ba122428f628d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6yQhG36kGFjmCWNIq05qsR"
      , name = "Das Geheimnis um TKKG (Neuaufnahme)"
      , urlToOpen = "https://open.spotify.com/album/6yQhG36kGFjmCWNIq05qsR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738ad4f4062e250a18888dd32a" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028ad4f4062e250a18888dd32a"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518ad4f4062e250a18888dd32a"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "12JCZMzqKa1UnttQOTbKYl"
      , name = "208/Geheimnis im Tresor"
      , urlToOpen = "https://open.spotify.com/album/12JCZMzqKa1UnttQOTbKYl"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d11ad6d3476ba0a06ec29ba5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d11ad6d3476ba0a06ec29ba5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d11ad6d3476ba0a06ec29ba5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3im4BSgNZoZUZMrBVnqPT0"
      , name = "Ein fast perfektes Weihnachtsmenü"
      , urlToOpen = "https://open.spotify.com/album/3im4BSgNZoZUZMrBVnqPT0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ba7006b79b3e2e7b9bed66a7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ba7006b79b3e2e7b9bed66a7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ba7006b79b3e2e7b9bed66a7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6IuKwwxl6rpnj9nYZjfoa2"
      , name = "207/Doppelte Entführung"
      , urlToOpen = "https://open.spotify.com/album/6IuKwwxl6rpnj9nYZjfoa2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e37f246fee20c455499e5726" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e37f246fee20c455499e5726"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e37f246fee20c455499e5726"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4XZXbwQnj4ucfX65Gpgd2M"
      , name = "206/Achtung, UFO-Kult!"
      , urlToOpen = "https://open.spotify.com/album/4XZXbwQnj4ucfX65Gpgd2M"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732bc755a107326bb7a8d491e7" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022bc755a107326bb7a8d491e7"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512bc755a107326bb7a8d491e7"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1PEY35jHKZezCkE0EbYGjv"
      , name = "205/Teuflische Kaffeefahrt"
      , urlToOpen = "https://open.spotify.com/album/1PEY35jHKZezCkE0EbYGjv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735906d23024b6bb3b18c328fb" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025906d23024b6bb3b18c328fb"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515906d23024b6bb3b18c328fb"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2HHyk7w3vEopXwNNiq5aNX"
      , name = "204/Verschwörung auf hoher See"
      , urlToOpen = "https://open.spotify.com/album/2HHyk7w3vEopXwNNiq5aNX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27300139d2c17de59410a8a6a7b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0200139d2c17de59410a8a6a7b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485100139d2c17de59410a8a6a7b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0W8SgAXgJVSRtgrbw6Th5V"
      , name = "203/Der Räuber mit der Weihnachtsmaske"
      , urlToOpen = "https://open.spotify.com/album/0W8SgAXgJVSRtgrbw6Th5V"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27373e8cbbb9905fe0340ff26de" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0273e8cbbb9905fe0340ff26de"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485173e8cbbb9905fe0340ff26de"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2URUpf8ElYaZxNgiWEapKo"
      , name = "202/Ein Paradies für Diebe"
      , urlToOpen = "https://open.spotify.com/album/2URUpf8ElYaZxNgiWEapKo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d1a57255f159f1ea73a79c17" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d1a57255f159f1ea73a79c17"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d1a57255f159f1ea73a79c17"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4Tch4Zq90nImDlQbLjNb2L"
      , name = "201/Vom Goldschatz besessen"
      , urlToOpen = "https://open.spotify.com/album/4Tch4Zq90nImDlQbLjNb2L"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ecc9c5c1f4f24d32b3b0486e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ecc9c5c1f4f24d32b3b0486e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ecc9c5c1f4f24d32b3b0486e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "40AzKKVoE6d4TxqlZ2N4Fr"
      , name = "200/Der große Coup"
      , urlToOpen = "https://open.spotify.com/album/40AzKKVoE6d4TxqlZ2N4Fr"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a58fe02810b607de91ea424e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a58fe02810b607de91ea424e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a58fe02810b607de91ea424e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1C1AXO3YHL4KVeQTHbK0tH"
      , name = "199/Verfolgungsjagd vor Mitternacht"
      , urlToOpen = "https://open.spotify.com/album/1C1AXO3YHL4KVeQTHbK0tH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739deebf8c00df077718d98abf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029deebf8c00df077718d98abf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519deebf8c00df077718d98abf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5k0cgRXinvmrHqwHGtFB0x"
      , name = "198/Der Golem vom Dunkelsee"
      , urlToOpen = "https://open.spotify.com/album/5k0cgRXinvmrHqwHGtFB0x"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ace436a8c8f50172cb8d5ab3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ace436a8c8f50172cb8d5ab3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ace436a8c8f50172cb8d5ab3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "34NTZ398LKn30D8SN8RwZ1"
      , name = "197/Bei Anpfiff Übergabe"
      , urlToOpen = "https://open.spotify.com/album/34NTZ398LKn30D8SN8RwZ1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a6f33042988cbcfa39f1e4d0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a6f33042988cbcfa39f1e4d0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a6f33042988cbcfa39f1e4d0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2fojM7wYwYuliNzYTmFzOX"
      , name = "196/Tatort Wagenburg"
      , urlToOpen = "https://open.spotify.com/album/2fojM7wYwYuliNzYTmFzOX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ce1c1230edd7f9ce0834b2ef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ce1c1230edd7f9ce0834b2ef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ce1c1230edd7f9ce0834b2ef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1O2InxIny6VBypt5DB3gTU"
      , name = "195/Dem Sonnenkönig auf der Spur"
      , urlToOpen = "https://open.spotify.com/album/1O2InxIny6VBypt5DB3gTU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27390127ca9141ebc020434d9e3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0290127ca9141ebc020434d9e3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485190127ca9141ebc020434d9e3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4cNiU8PZr45LNg7kzGLipx"
      , name = "194/Der Friedhof der Namenlosen"
      , urlToOpen = "https://open.spotify.com/album/4cNiU8PZr45LNg7kzGLipx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27355a94435108b45d14d0c67dc" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0255a94435108b45d14d0c67dc"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485155a94435108b45d14d0c67dc"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1WkgLbhl2Qigtc55DXP93S"
      , name = "193/Das Weihnachts-Phantom"
      , urlToOpen = "https://open.spotify.com/album/1WkgLbhl2Qigtc55DXP93S"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739860a14cbdd4f14743dd4bef" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029860a14cbdd4f14743dd4bef"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519860a14cbdd4f14743dd4bef"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0NyIaGxbQlRPnA201NEbkE"
      , name = "192/Feuer auf Gut Ribbeck!"
      , urlToOpen = "https://open.spotify.com/album/0NyIaGxbQlRPnA201NEbkE"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b5d2e3d9f441ab3aef894360" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b5d2e3d9f441ab3aef894360"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b5d2e3d9f441ab3aef894360"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1kZIlUYCKUvmfEHXku1ter"
      , name = "191/Nord-Nordwest zum Hexenplatz"
      , urlToOpen = "https://open.spotify.com/album/1kZIlUYCKUvmfEHXku1ter"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273915080df23056b133aadf99d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02915080df23056b133aadf99d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851915080df23056b133aadf99d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5CabKO4dpZJ0wUwX8MMDk6"
      , name = "190/Der eiskalte Clown"
      , urlToOpen = "https://open.spotify.com/album/5CabKO4dpZJ0wUwX8MMDk6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27344ca54c07f42ad4e2ffe9dd8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0244ca54c07f42ad4e2ffe9dd8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485144ca54c07f42ad4e2ffe9dd8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7aMulTBM9qpGtoT0GUoAsZ"
      , name = "189/Iwan, der Schreckliche"
      , urlToOpen = "https://open.spotify.com/album/7aMulTBM9qpGtoT0GUoAsZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27360e218e94ff0ca76b3d2a96d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0260e218e94ff0ca76b3d2a96d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485160e218e94ff0ca76b3d2a96d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3ZJPztovzVLCZ5wMyErFyd"
      , name = "188/Die blauen Schafe von Artelsbach"
      , urlToOpen = "https://open.spotify.com/album/3ZJPztovzVLCZ5wMyErFyd"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b82664fb9299bc204b2e1464" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b82664fb9299bc204b2e1464"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b82664fb9299bc204b2e1464"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7MNjtmClWBiJvqK7LDVDdH"
      , name = "187/Ausspioniert!"
      , urlToOpen = "https://open.spotify.com/album/7MNjtmClWBiJvqK7LDVDdH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b74e48b7ac16d2758cea59d0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b74e48b7ac16d2758cea59d0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b74e48b7ac16d2758cea59d0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4dOQ5SfUGPEX5BrkvnGnSM"
      , name = "186/Die schlafende Chinesin"
      , urlToOpen = "https://open.spotify.com/album/4dOQ5SfUGPEX5BrkvnGnSM"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b6cc82b097f8c8937901da46" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b6cc82b097f8c8937901da46"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b6cc82b097f8c8937901da46"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4ExVTdTtEh9QMKG6F0ilIA"
      , name = "185/der unsichtbare Dieb"
      , urlToOpen = "https://open.spotify.com/album/4ExVTdTtEh9QMKG6F0ilIA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dfcd547e0a5af2d01d34fc15" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dfcd547e0a5af2d01d34fc15"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dfcd547e0a5af2d01d34fc15"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7qglq750T0LjXZbsDzEeSn"
      , name = "184/Die ewige Finsternis"
      , urlToOpen = "https://open.spotify.com/album/7qglq750T0LjXZbsDzEeSn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c6b05e423024207fc1252f52" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c6b05e423024207fc1252f52"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c6b05e423024207fc1252f52"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2kUywGimNzj3YRKAkwVf3S"
      , name = "183/Blindgänger im Villenviertel"
      , urlToOpen = "https://open.spotify.com/album/2kUywGimNzj3YRKAkwVf3S"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27323883417f16d92db78ef9a4f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0223883417f16d92db78ef9a4f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485123883417f16d92db78ef9a4f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3hz4bWxTDtHzDwKTRmOcDQ"
      , name = "182/Im Bann des Übersinnlichen"
      , urlToOpen = "https://open.spotify.com/album/3hz4bWxTDtHzDwKTRmOcDQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ac7e876a73baa9954e450d20" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ac7e876a73baa9954e450d20"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ac7e876a73baa9954e450d20"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1rYzkmCLyYvGllBZ3y2AGV"
      , name = "181/Der vertauschte Koffer"
      , urlToOpen = "https://open.spotify.com/album/1rYzkmCLyYvGllBZ3y2AGV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c97b279f20b693ab6e706428" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c97b279f20b693ab6e706428"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c97b279f20b693ab6e706428"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7adgwW3gVPH7l2mzfgzC6t"
      , name = "180/Alarm im Raubtierhaus"
      , urlToOpen = "https://open.spotify.com/album/7adgwW3gVPH7l2mzfgzC6t"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734d7c60f60b71d3341a0a9d0f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024d7c60f60b71d3341a0a9d0f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514d7c60f60b71d3341a0a9d0f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5H9JYToGoYk8mGnUkCX3Z9"
      , name = "179/Abzocke im Online-Chat"
      , urlToOpen = "https://open.spotify.com/album/5H9JYToGoYk8mGnUkCX3Z9"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273077eaeea265ea9ab2624797c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02077eaeea265ea9ab2624797c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851077eaeea265ea9ab2624797c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4LrP9x8HI2f0wkRgN5VLMe"
      , name = "178/Hai-Alarm im Aquapark"
      , urlToOpen = "https://open.spotify.com/album/4LrP9x8HI2f0wkRgN5VLMe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b2c68cdbec5a06e3b35e8055" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b2c68cdbec5a06e3b35e8055"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b2c68cdbec5a06e3b35e8055"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5D6dTe3cuMxZtHhKYf2Nph"
      , name = "177/Die Spur der Wölfin"
      , urlToOpen = "https://open.spotify.com/album/5D6dTe3cuMxZtHhKYf2Nph"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27301338cabb142eef106b6a704" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0201338cabb142eef106b6a704"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485101338cabb142eef106b6a704"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4cs4K4fFEFFgz3gtobHW9S"
      , name = "176/Verbrechen im Rampenlicht"
      , urlToOpen = "https://open.spotify.com/album/4cs4K4fFEFFgz3gtobHW9S"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c5f3234925d860ec2cd1b8c3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c5f3234925d860ec2cd1b8c3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c5f3234925d860ec2cd1b8c3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7z37XBrYgYo7DCs9dFeHvq"
      , name = "175/Nachtwanderung mit Schrecken"
      , urlToOpen = "https://open.spotify.com/album/7z37XBrYgYo7DCs9dFeHvq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27334d456e2f2fdc6d1b2ce7b05" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0234d456e2f2fdc6d1b2ce7b05"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485134d456e2f2fdc6d1b2ce7b05"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "37jFIur7xvS8bjE8CeXyWA"
      , name = "174/Doppelgänger auf der Rennbahn"
      , urlToOpen = "https://open.spotify.com/album/37jFIur7xvS8bjE8CeXyWA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273681821b926c57bcfa69ff3d6" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02681821b926c57bcfa69ff3d6"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851681821b926c57bcfa69ff3d6"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6RlfZAsHvD4G00fxBiWeN1"
      , name = "173/Die Skelettbande"
      , urlToOpen = "https://open.spotify.com/album/6RlfZAsHvD4G00fxBiWeN1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27372abd13905aab712f231d087" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0272abd13905aab712f231d087"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485172abd13905aab712f231d087"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2z4tH8k3YDSgSB8QQqrkfG"
      , name = "172/Das Geheimnis der Moorleiche"
      , urlToOpen = "https://open.spotify.com/album/2z4tH8k3YDSgSB8QQqrkfG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ad024c7a1a0ca65242b8b325" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ad024c7a1a0ca65242b8b325"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ad024c7a1a0ca65242b8b325"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2nJDDgf2DvDDtxiTVwyfhW"
      , name = "171/Das lebende Gemälde"
      , urlToOpen = "https://open.spotify.com/album/2nJDDgf2DvDDtxiTVwyfhW"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733800407afe4161e8c89d3667" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023800407afe4161e8c89d3667"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513800407afe4161e8c89d3667"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0zpxGRczKxY7teFkuOitzO"
      , name = "170/Schock im Schnee"
      , urlToOpen = "https://open.spotify.com/album/0zpxGRczKxY7teFkuOitzO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c6e4a9b3e3b91695325953ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c6e4a9b3e3b91695325953ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c6e4a9b3e3b91695325953ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "64DTYY344b4JLlsHlpUG7r"
      , name = "169/Tatort Dschungel"
      , urlToOpen = "https://open.spotify.com/album/64DTYY344b4JLlsHlpUG7r"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27337146be95d72b5c5c472e6ca" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0237146be95d72b5c5c472e6ca"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485137146be95d72b5c5c472e6ca"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4w7Qr51Uw16dBHDcfzgvHk"
      , name = "168/Millionencoup im Stadion"
      , urlToOpen = "https://open.spotify.com/album/4w7Qr51Uw16dBHDcfzgvHk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ee81ed798e222010897ea968" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ee81ed798e222010897ea968"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ee81ed798e222010897ea968"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7mu7o53PrOlRVxErUufaSL"
      , name = "167/Der Unsichtbare"
      , urlToOpen = "https://open.spotify.com/album/7mu7o53PrOlRVxErUufaSL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dde88856cec700670712e53f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dde88856cec700670712e53f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dde88856cec700670712e53f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6zI9fZd9Fk9LeUwM7uoWSq"
      , name = "166/Das Mädchen mit der Kristallkugel"
      , urlToOpen = "https://open.spotify.com/album/6zI9fZd9Fk9LeUwM7uoWSq"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730acf6c6c1d9ddb9481361721" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020acf6c6c1d9ddb9481361721"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510acf6c6c1d9ddb9481361721"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0eav6341Txr3YF4aAmJ2O2"
      , name = "165/Advent mit Knall-Effekt"
      , urlToOpen = "https://open.spotify.com/album/0eav6341Txr3YF4aAmJ2O2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731535bc54215fad094879f4ca" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021535bc54215fad094879f4ca"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511535bc54215fad094879f4ca"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7Dh3Sr5DdK6OT2M7FBUwhg"
      , name = "164/Operation Hexen-Graffiti"
      , urlToOpen = "https://open.spotify.com/album/7Dh3Sr5DdK6OT2M7FBUwhg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ad668f501ed086c0621c45b4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ad668f501ed086c0621c45b4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ad668f501ed086c0621c45b4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6nFRXqUzqgusdraaxsOGqa"
      , name = "163/Die Makler-Mafia"
      , urlToOpen = "https://open.spotify.com/album/6nFRXqUzqgusdraaxsOGqa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734ce7f0a79f866c7747a57ca8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024ce7f0a79f866c7747a57ca8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514ce7f0a79f866c7747a57ca8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4rSBDuSHYujCYFhrazbtnA"
      , name = "162/Gefahr für Oskar!"
      , urlToOpen = "https://open.spotify.com/album/4rSBDuSHYujCYFhrazbtnA"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b2b102f0d2a94f79ecab57ac" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b2b102f0d2a94f79ecab57ac"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b2b102f0d2a94f79ecab57ac"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6dneQXVs3r2JnZZxcwLtyK"
      , name = "161/Ein Yeti in der Millionenstadt"
      , urlToOpen = "https://open.spotify.com/album/6dneQXVs3r2JnZZxcwLtyK"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273243ec841a01c9a7b6403103f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02243ec841a01c9a7b6403103f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851243ec841a01c9a7b6403103f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7DPQuaR0bI58tJzkSQMllp"
      , name = "160/Das Grauen naht um Zwölf"
      , urlToOpen = "https://open.spotify.com/album/7DPQuaR0bI58tJzkSQMllp"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f94163c3e42c0977fcff28d8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f94163c3e42c0977fcff28d8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f94163c3e42c0977fcff28d8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4qR8In8uET1hBWHPGmhaWO"
      , name = "159/Böses Spiel im Sommercamp"
      , urlToOpen = "https://open.spotify.com/album/4qR8In8uET1hBWHPGmhaWO"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d9a6c66e971054ceded09e74" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d9a6c66e971054ceded09e74"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d9a6c66e971054ceded09e74"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3OQqrEZzRYgYDcBIqsTeXS"
      , name = "158/Trainer unter Verdacht"
      , urlToOpen = "https://open.spotify.com/album/3OQqrEZzRYgYDcBIqsTeXS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c3e540efa32e14296d2128c9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c3e540efa32e14296d2128c9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c3e540efa32e14296d2128c9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "55nP0alEiObRF2c151bhTv"
      , name = "157/Oskar und die sieben Zwerge"
      , urlToOpen = "https://open.spotify.com/album/55nP0alEiObRF2c151bhTv"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27341e056bbe1baecfbf8f29f0e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0241e056bbe1baecfbf8f29f0e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485141e056bbe1baecfbf8f29f0e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "20WDNq4KvOibx87TFa2eXP"
      , name = "156/Erpresser fahren Achterbahn"
      , urlToOpen = "https://open.spotify.com/album/20WDNq4KvOibx87TFa2eXP"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273371fee3fe0ce20fea57c4bf9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02371fee3fe0ce20fea57c4bf9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851371fee3fe0ce20fea57c4bf9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5XPVfzwtpBFF9CrmLb8Ilm"
      , name = "155/Gefangen im Spukhaus"
      , urlToOpen = "https://open.spotify.com/album/5XPVfzwtpBFF9CrmLb8Ilm"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27331b05fa607ad79333f314dd3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0231b05fa607ad79333f314dd3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485131b05fa607ad79333f314dd3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0K30SpThDKymGkKlRgtUv2"
      , name = "154/Das Geheimnis der Burgruine"
      , urlToOpen = "https://open.spotify.com/album/0K30SpThDKymGkKlRgtUv2"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27395b1cd6d77e8c1582c000583" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0295b1cd6d77e8c1582c000583"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485195b1cd6d77e8c1582c000583"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4olYXMWX664H8ZJHZbXmAT"
      , name = "153/Es geschah in einer Regennacht"
      , urlToOpen = "https://open.spotify.com/album/4olYXMWX664H8ZJHZbXmAT"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27313eff56f5a91bb50bb62f4a9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0213eff56f5a91bb50bb62f4a9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485113eff56f5a91bb50bb62f4a9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5j81oYcn0kptiSEPrEHmkF"
      , name = "152/Max und Anna, ein diebisches Paar"
      , urlToOpen = "https://open.spotify.com/album/5j81oYcn0kptiSEPrEHmkF"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27338e1adfee8a4f65e7fd7c89e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0238e1adfee8a4f65e7fd7c89e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485138e1adfee8a4f65e7fd7c89e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7CLvIAy7Nzo03EQYWKa0yn"
      , name = "151/Gekauftes Spiel"
      , urlToOpen = "https://open.spotify.com/album/7CLvIAy7Nzo03EQYWKa0yn"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739a133073376e1b56164f8020" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029a133073376e1b56164f8020"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519a133073376e1b56164f8020"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0ZqyFeMXxCyIJvYptGlnn1"
      , name = "150/Heiße Nächte im Dezember"
      , urlToOpen = "https://open.spotify.com/album/0ZqyFeMXxCyIJvYptGlnn1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c36317344e1d867cde2f0cb0" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c36317344e1d867cde2f0cb0"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c36317344e1d867cde2f0cb0"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1OWuX6xSnnC3oebl45X28K"
      , name = "149/Tims gefährlichster Gegner"
      , urlToOpen = "https://open.spotify.com/album/1OWuX6xSnnC3oebl45X28K"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738397ec2d0762245f955098ae" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028397ec2d0762245f955098ae"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518397ec2d0762245f955098ae"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0nFRzugvW1NVT1DUDxpQdb"
      , name = "148/Fieser Trick beim Finale"
      , urlToOpen = "https://open.spotify.com/album/0nFRzugvW1NVT1DUDxpQdb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b79c95671aa3fe2e9f3eb241" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b79c95671aa3fe2e9f3eb241"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b79c95671aa3fe2e9f3eb241"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "642OtfJ54JziKQWOYbyiEa"
      , name = "147/Hölle ohne Hintertür"
      , urlToOpen = "https://open.spotify.com/album/642OtfJ54JziKQWOYbyiEa"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c7d224d5608869859589315b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c7d224d5608869859589315b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c7d224d5608869859589315b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "74Qcbtr7f0KP3VpEgaWoaS"
      , name = "146/Nonstop in die Raketenfalle"
      , urlToOpen = "https://open.spotify.com/album/74Qcbtr7f0KP3VpEgaWoaS"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735f9e81f7add380075e2878e4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025f9e81f7add380075e2878e4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515f9e81f7add380075e2878e4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3vAwRpp0YGKwWzLxctXHXe"
      , name = "145/Hinterhalt am schwarzen Fels"
      , urlToOpen = "https://open.spotify.com/album/3vAwRpp0YGKwWzLxctXHXe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2738e00fd7d7faf645afcda4237" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e028e00fd7d7faf645afcda4237"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048518e00fd7d7faf645afcda4237"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1DL2rSYjJIWqFpmGIRitMZ"
      , name = "144/Schreckensnacht im Schlangenmaul"
      , urlToOpen = "https://open.spotify.com/album/1DL2rSYjJIWqFpmGIRitMZ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2733d8816549b74586cb3a10547" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e023d8816549b74586cb3a10547"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048513d8816549b74586cb3a10547"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6WKU3Zj4uxvrJnY5Kc03A0"
      , name = "143/Das unheimliche Haus"
      , urlToOpen = "https://open.spotify.com/album/6WKU3Zj4uxvrJnY5Kc03A0"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730a21e035d47c29480c449d92" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020a21e035d47c29480c449d92"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510a21e035d47c29480c449d92"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5SZxeVgh5JUHEgew4IKLsx"
      , name = "142/Bankräuber mit Supertrick"
      , urlToOpen = "https://open.spotify.com/album/5SZxeVgh5JUHEgew4IKLsx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e3ba8b727ae7483ec2affefa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e3ba8b727ae7483ec2affefa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e3ba8b727ae7483ec2affefa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "34ZBbN1LTl2c2Qxzj2JwF1"
      , name = "141/Todesbiss der schwarzen Mamba"
      , urlToOpen = "https://open.spotify.com/album/34ZBbN1LTl2c2Qxzj2JwF1"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c9aede7c5df48bdab75959b2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c9aede7c5df48bdab75959b2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c9aede7c5df48bdab75959b2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7BTjGCqexmQ947HDHR5e8J"
      , name = "140/Draculas Erben"
      , urlToOpen = "https://open.spotify.com/album/7BTjGCqexmQ947HDHR5e8J"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27304d5ceb53a7fce99f4085e88" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0204d5ceb53a7fce99f4085e88"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485104d5ceb53a7fce99f4085e88"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7pRJLfr0wOiudzUjSqitzN"
      , name = "139/Oskar jagt die Drogendealer"
      , urlToOpen = "https://open.spotify.com/album/7pRJLfr0wOiudzUjSqitzN"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273bbcad65709c19f0c28eb412f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02bbcad65709c19f0c28eb412f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851bbcad65709c19f0c28eb412f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "78gbDWHGzUfxISjEQjhXXg"
      , name = "138/Raubzug mit Bumerang"
      , urlToOpen = "https://open.spotify.com/album/78gbDWHGzUfxISjEQjhXXg"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731462e27990f35fe6e75e441c" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021462e27990f35fe6e75e441c"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511462e27990f35fe6e75e441c"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3S3RsaMPC1zpjYh9ibwLhb"
      , name = "137/Verschleppt ins Tal Diabolo"
      , urlToOpen = "https://open.spotify.com/album/3S3RsaMPC1zpjYh9ibwLhb"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2739f0287a81f67a13fa56ed5fd" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e029f0287a81f67a13fa56ed5fd"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048519f0287a81f67a13fa56ed5fd"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6Jw6ALN4jEqyhtHPuSGD7e"
      , name = "136/Argentinische Entführung"
      , urlToOpen = "https://open.spotify.com/album/6Jw6ALN4jEqyhtHPuSGD7e"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c619c18e27da23800f989474" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c619c18e27da23800f989474"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c619c18e27da23800f989474"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5GyWEEFbhvsUPk9pVR61p8"
      , name = "135/Der Meisterdieb und seine Feinde"
      , urlToOpen = "https://open.spotify.com/album/5GyWEEFbhvsUPk9pVR61p8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dfbe5b1152865935244fa679" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dfbe5b1152865935244fa679"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dfbe5b1152865935244fa679"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1xOMCIhM742LDNn6Av7SaY"
      , name = "134/Wer stoppt die Weihnachts-Gangster"
      , urlToOpen = "https://open.spotify.com/album/1xOMCIhM742LDNn6Av7SaY"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f58036b63184b03727182c58" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f58036b63184b03727182c58"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f58036b63184b03727182c58"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6u0Bbe6ewDB23wwN0XbU2J"
      , name = "133/Auf vier Pfoten zur Millionenbeute"
      , urlToOpen = "https://open.spotify.com/album/6u0Bbe6ewDB23wwN0XbU2J"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a4ca4660190a86d43ad24c00" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a4ca4660190a86d43ad24c00"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a4ca4660190a86d43ad24c00"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7C5cT8kDPUKAiyV39QC9y6"
      , name = "132/Homejacker machen Überstunden"
      , urlToOpen = "https://open.spotify.com/album/7C5cT8kDPUKAiyV39QC9y6"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273eb9f37b6c3a118ea9b8f1d73" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02eb9f37b6c3a118ea9b8f1d73"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851eb9f37b6c3a118ea9b8f1d73"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3Hto454teGDtP3LANx45nV"
      , name = "131/Stundenlohn für flotte Gangster"
      , urlToOpen = "https://open.spotify.com/album/3Hto454teGDtP3LANx45nV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fb8cf29d001ae4ddf073eb1d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fb8cf29d001ae4ddf073eb1d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fb8cf29d001ae4ddf073eb1d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0readhKQChO0CavM03TBsG"
      , name = "130/Die gefährliche Zeugin verschwindet"
      , urlToOpen = "https://open.spotify.com/album/0readhKQChO0CavM03TBsG"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d512a9ec2d76217465e6b29d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d512a9ec2d76217465e6b29d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d512a9ec2d76217465e6b29d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1TjNjBs1qKh8atmJe9JBcz"
      , name = "129/Der Erpresser fährt bis Endstation"
      , urlToOpen = "https://open.spotify.com/album/1TjNjBs1qKh8atmJe9JBcz"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27357c95b17075b762a4a93d921" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0257c95b17075b762a4a93d921"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485157c95b17075b762a4a93d921"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5jjQAVPbdRAvDxeCdg8xsL"
      , name = "128/Die Gehilfen des Terrors"
      , urlToOpen = "https://open.spotify.com/album/5jjQAVPbdRAvDxeCdg8xsL"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273fa2bd743c7f72911b01a389d" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02fa2bd743c7f72911b01a389d"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851fa2bd743c7f72911b01a389d"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "4HNxicEEVUbZHI4GvvBEVH"
      , name = "127/Im Schlauchboot durch die Unterwelt"
      , urlToOpen = "https://open.spotify.com/album/4HNxicEEVUbZHI4GvvBEVH"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca5147cc80623ffb33a7fc64" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca5147cc80623ffb33a7fc64"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca5147cc80623ffb33a7fc64"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "59XpRNxoOO21j2bfXr4u8v"
      , name = "126/Teddy Talers Höllenfahrt"
      , urlToOpen = "https://open.spotify.com/album/59XpRNxoOO21j2bfXr4u8v"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a297fc91c3a9153ec300f385" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a297fc91c3a9153ec300f385"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a297fc91c3a9153ec300f385"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6HtJ1gsoOlPlMHl6BBIedU"
      , name = "125/Der Mörder aus einer anderen Zeit"
      , urlToOpen = "https://open.spotify.com/album/6HtJ1gsoOlPlMHl6BBIedU"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273dde0a4007eee70fc774e2853" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02dde0a4007eee70fc774e2853"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851dde0a4007eee70fc774e2853"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3i8iFxVoBzO7HLAmH5WTc8"
      , name = "124/Vergebliche Suche nach Gaby"
      , urlToOpen = "https://open.spotify.com/album/3i8iFxVoBzO7HLAmH5WTc8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273b8a1fd32c90e60ebba228bcf" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02b8a1fd32c90e60ebba228bcf"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851b8a1fd32c90e60ebba228bcf"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Uw592E81r73YlcfdrXTqe"
      , name = "123/Mordkomplott im Luxus-Klo"
      , urlToOpen = "https://open.spotify.com/album/0Uw592E81r73YlcfdrXTqe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f5c7c11baa8937dfdc7ef661" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f5c7c11baa8937dfdc7ef661"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f5c7c11baa8937dfdc7ef661"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0ZQupaN55cZsgjnaZc3ce8"
      , name = "122/Der Goldschatz, der vom Himmel fiel"
      , urlToOpen = "https://open.spotify.com/album/0ZQupaN55cZsgjnaZc3ce8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d8f4468fc42b5077265b6409" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d8f4468fc42b5077265b6409"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d8f4468fc42b5077265b6409"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3af1Ne9SXRGDBsyhn1OcbX"
      , name = "121/Ein cooler Typ aus der Hölle"
      , urlToOpen = "https://open.spotify.com/album/3af1Ne9SXRGDBsyhn1OcbX"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ba0295b0f6df98c4ca4321fa" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ba0295b0f6df98c4ca4321fa"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ba0295b0f6df98c4ca4321fa"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6MZ8GjwkBao0glkAguCYpx"
      , name = "120/Bei Anruf Angst"
      , urlToOpen = "https://open.spotify.com/album/6MZ8GjwkBao0glkAguCYpx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273285379f8d341d5c4f555c9c3" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02285379f8d341d5c4f555c9c3"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851285379f8d341d5c4f555c9c3"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6u7TXxm1pFVUceAkdl5EMo"
      , name = "119/Frische Spur nach 70 Jahren"
      , urlToOpen = "https://open.spotify.com/album/6u7TXxm1pFVUceAkdl5EMo"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27345ee01bfd571760a5c28d853" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0245ee01bfd571760a5c28d853"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485145ee01bfd571760a5c28d853"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5TX9govv5QXwFLZT2fiHSe"
      , name = "118/Im Kaufhaus ist der Teufel los"
      , urlToOpen = "https://open.spotify.com/album/5TX9govv5QXwFLZT2fiHSe"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273db58f1ae9eeaebb2ea04e384" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02db58f1ae9eeaebb2ea04e384"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851db58f1ae9eeaebb2ea04e384"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2NlUe7bw93isGjrvmXneYt"
      , name = "117/Im Schloß der schlafenden Vampire"
      , urlToOpen = "https://open.spotify.com/album/2NlUe7bw93isGjrvmXneYt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2731e8e8f3da90e5e0cb1ace0b8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e021e8e8f3da90e5e0cb1ace0b8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048511e8e8f3da90e5e0cb1ace0b8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1qnXN4G8JKVo2cBe3YiBYu"
      , name = "116/Klassenfahrt zur Hexenburg"
      , urlToOpen = "https://open.spotify.com/album/1qnXN4G8JKVo2cBe3YiBYu"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732e7eb038cdad7667dea16f12" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022e7eb038cdad7667dea16f12"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512e7eb038cdad7667dea16f12"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "3HLVIwjC3e7nR0blSiR0Cf"
      , name = "115/Der Diamant im Bauch der Kobra"
      , urlToOpen = "https://open.spotify.com/album/3HLVIwjC3e7nR0blSiR0Cf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2734dd918c1dd5f6def93a3ba52" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e024dd918c1dd5f6def93a3ba52"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048514dd918c1dd5f6def93a3ba52"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1EOt95N1umfsGDDi2RGyLx"
      , name = "114/Die Sekte Satans"
      , urlToOpen = "https://open.spotify.com/album/1EOt95N1umfsGDDi2RGyLx"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27348169644f16833f40b7bad9e" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0248169644f16833f40b7bad9e"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485148169644f16833f40b7bad9e"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "47XIAkJhFj1O5J6bFF061G"
      , name = "113/Mit heißer Nadel Jagd auf Kids"
      , urlToOpen = "https://open.spotify.com/album/47XIAkJhFj1O5J6bFF061G"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273842c7654a4a1d72acb2bbda5" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02842c7654a4a1d72acb2bbda5"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851842c7654a4a1d72acb2bbda5"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0hvicgoCbgvXmwjV2FhPOK"
      , name = "112/Bombenspaß bei Kies & Knete"
      , urlToOpen = "https://open.spotify.com/album/0hvicgoCbgvXmwjV2FhPOK"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273ca1ca0f7bf58b1282db089ad" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02ca1ca0f7bf58b1282db089ad"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851ca1ca0f7bf58b1282db089ad"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7v5o8fgiM0AUoibGLX7mNR"
      , name = "111/Die tödliche Falle"
      , urlToOpen = "https://open.spotify.com/album/7v5o8fgiM0AUoibGLX7mNR"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273c6de8671affe99160b11ee54" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02c6de8671affe99160b11ee54"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851c6de8671affe99160b11ee54"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "7aMc9Dk7FhceVhhSRvGVKi"
      , name = "110/Das Phantom im Schokoladenmuseum"
      , urlToOpen = "https://open.spotify.com/album/7aMc9Dk7FhceVhhSRvGVKi"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2730b65872ffc092f8a531a6a9f" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e020b65872ffc092f8a531a6a9f"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048510b65872ffc092f8a531a6a9f"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Av7I4rxIH4l2iy4eonNqQ"
      , name = "109/Mörderspiel im Burghotel"
      , urlToOpen = "https://open.spotify.com/album/0Av7I4rxIH4l2iy4eonNqQ"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273aaa29403bcbef337b237665b" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02aaa29403bcbef337b237665b"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851aaa29403bcbef337b237665b"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5UowH6UQ4hHv0pDp7XC73F"
      , name = "108/Das Konzert bei den Ratten"
      , urlToOpen = "https://open.spotify.com/album/5UowH6UQ4hHv0pDp7XC73F"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273245b83f6ec889cdb5f1aca68" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02245b83f6ec889cdb5f1aca68"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851245b83f6ec889cdb5f1aca68"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "20Ei5hMuzN4aIaubhwZGCh"
      , name = "107/Lösegeld für einen Irrtum"
      , urlToOpen = "https://open.spotify.com/album/20Ei5hMuzN4aIaubhwZGCh"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2735c1facd4093ff584d49571ad" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e025c1facd4093ff584d49571ad"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048515c1facd4093ff584d49571ad"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6vx49wKEFKejjPiqtr6PZV"
      , name = "106/Mädchenraub im Ferienhaus"
      , urlToOpen = "https://open.spotify.com/album/6vx49wKEFKejjPiqtr6PZV"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273d6fd97244f51f74b10888db9" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02d6fd97244f51f74b10888db9"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851d6fd97244f51f74b10888db9"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "1rFO6xC24qh08d1wCvKDC8"
      , name = "105/Vermißte Kids und Killerpflanzen"
      , urlToOpen = "https://open.spotify.com/album/1rFO6xC24qh08d1wCvKDC8"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273f75e759646e7ab1f83f71773" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02f75e759646e7ab1f83f71773"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851f75e759646e7ab1f83f71773"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "5YwL93GA7APpy21xMum8Wt"
      , name = "104/Im Wettbüro des Teufels"
      , urlToOpen = "https://open.spotify.com/album/5YwL93GA7APpy21xMum8Wt"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273e22cfd79b8e932ab30935378" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02e22cfd79b8e932ab30935378"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851e22cfd79b8e932ab30935378"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "0Bgt28WUbkcFYGYFZDkVMk"
      , name = "103/Mörderischer Stammbaum"
      , urlToOpen = "https://open.spotify.com/album/0Bgt28WUbkcFYGYFZDkVMk"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b2732340444d98b80cf5e4b92cd4" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e022340444d98b80cf5e4b92cd4"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d000048512340444d98b80cf5e4b92cd4"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "6b6XofBfdNQOrTQ5OYNzxI"
      , name = "102/Angst auf der Autobahn"
      , urlToOpen = "https://open.spotify.com/album/6b6XofBfdNQOrTQ5OYNzxI"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27354e9a1c89d3a16ec0aa44a10" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0254e9a1c89d3a16ec0aa44a10"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485154e9a1c89d3a16ec0aa44a10"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2jU1HQIl8BvRK2k5xd1rnf"
      , name = "101/Opfer fliegen 1. Klasse"
      , urlToOpen = "https://open.spotify.com/album/2jU1HQIl8BvRK2k5xd1rnf"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b273a5c1e95d1730d78d54851ab8" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e02a5c1e95d1730d78d54851ab8"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d00004851a5c1e95d1730d78d54851ab8"
              , width = 64 
              , height = 64 
              }
            ]
      }
    , { id = "2roFEQcxTR8srR0sWgm456"
      , name = "100/Fieser Trick mit Nr. 100"
      , urlToOpen = "https://open.spotify.com/album/2roFEQcxTR8srR0sWgm456"
      , covers =
            [ { url = "https://i.scdn.co/image/ab67616d0000b27314ac6c46868f8c51be7d33b2" 
              , width = 640 
              , height = 640 
              }
            , { url = "https://i.scdn.co/image/ab67616d00001e0214ac6c46868f8c51be7d33b2"
              , width = 300 
              , height = 300 
              }
            , { url = "https://i.scdn.co/image/ab67616d0000485114ac6c46868f8c51be7d33b2"
              , width = 64 
              , height = 64 
              }
            ]
      }
    ] |> Array.fromList
