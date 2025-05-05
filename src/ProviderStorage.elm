module ProviderStorage exposing(providers)
import Providers

providers : List Providers.Provider
providers =
    [ { name = "spotify", icon = "img/spotify.svg" }
    , { name = "deezer", icon = "img/deezer.png" }
    ]
