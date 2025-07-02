module TextRessources exposing (..)

import Array exposing (Array)


type alias Text =
    { key : String
    , flag : String
    , block : String
    , block_current_album : String
    , clear_blocked : String
    , no_albums_available : String
    , no_albums_available_but : String
    , are_blacklisted_clear_blocklist_question : String
    , no_album_data_available : String
    , no_artist_data_available : String
    , no_album_and_no_artist_data_available : String
    , ask_to_clear_all_settings : String
    , allow_multiple_selection : String
    , select_provider: String
    , drei_metadaten_thanks_1: String
    , drei_metadaten_thanks_2: String
    , drei_metadaten_link : String
    , information_overlay_title : String
    , information_overlay_text : String
    , information_overlay_provider_text : String
    , information_overlay_artist_text : String
    , information_overlay_copyright_text : String
    , information_overlay_artist_title : String
    , information_overlay_provider_title : String
    , information_unfinished_provider_integration : String
    , last_updated : String
    }


germanText : Text
germanText =
    { flag = "🇩🇪"
    , key = "de"
    , block = "blocken"
    , block_current_album = "aktuelles Album blockieren"
    , clear_blocked = "Blockliste löschen"
    , no_albums_available = "Keine Alben verfügbar, vermutlich ist die Initialisierung fehlgeschlagen"
    , no_albums_available_but = "Keine Albenverfügbar, aber "
    , are_blacklisted_clear_blocklist_question = " sind blockiert. Blockliste löschen?"
    , no_album_data_available = "Keine Albuminformationen verfügbar :("
    , no_artist_data_available = "Keine Interpreteninformationen verfügbar :("
    , no_album_and_no_artist_data_available = "Weder Album- noch Interpreteninformationen verfügbar :("
    , ask_to_clear_all_settings = "Einstellungen zurücksetzen?"
    , allow_multiple_selection = "Mehrfachauswahl"
    , select_provider = "Dienst auswählen"
    , drei_metadaten_thanks_1 = "Vielen Dank an "
    , drei_metadaten_thanks_2 = " für die Bereitstellung einiger Metadaten!"
    , drei_metadaten_link = "http://dreimetadaten.de/"
    , information_overlay_title = "Informationen"
    , information_overlay_text = "Dies ist eine einfache App, um zufällig Hörbücher von verschiedenen Anbietern auszuwählen. Wenn dir Inhalte fehlen kannst du am unteren Ende der Seite den Reddit-Link nutzen, um mir Bescheid zu geben."
    , information_overlay_provider_text = "Du kannst zwischen verschiedenen Anbietern (Spotify, Deezer, Apple Music, ...) wechseln, indem du den zweiten Button von rechts in der Titelleiste der Web-App verwendest. HINWEIS: Nicht alle Anbieter unterstützen alle Inhalte!"
    , information_overlay_artist_text = "Du kannst Interpreten auswählen, indem du auf das Interpreten-Symbol in der Titelleiste der Web-App klickst (ganz rechts in der Menuleiste). Du kannst mehrere Interpreten auswählen, indem du den Mehrfachauswahlmodus im Interpreten-Auswahl-Overlay aktivierst."
    , information_overlay_copyright_text = "Alle auf dieser Webseite verwendeten Bilder und Metadaten der Künstler und Hörspiele/bücher sind Eigentum der jeweiligen Besitzer und unterliegen deren Urheber- bzw. Nutzungsrechten."
    , information_overlay_artist_title = "Interpretenauswahl"
    , information_overlay_provider_title = "Anbieterauswahl"
    , information_unfinished_provider_integration = "Diese Provider-Integration ist noch nicht fertiggestellt, daher gibt es nur eine geringe Auswahl an Inhalten. Ich arbeite daran, diese Integration zu verbessern!"
    , last_updated = "Zuletzt aktualisiert: "
    }


englishText : Text
englishText =
    { flag = "🇬🇧"
    , key = "en"
    , block = "block"
    , block_current_album = "block current album"
    , clear_blocked = "clear blocked"
    , no_albums_available = "No albums available. This is most likely the result of a failed initialization"
    , no_albums_available_but = "No albums available but "
    , are_blacklisted_clear_blocklist_question = " are blacklisted. Clear blacklist?"
    , no_album_data_available = "No album data available :("
    , no_artist_data_available = "No artist data available :("
    , no_album_and_no_artist_data_available = "Neither artist nor album data available :("
    , ask_to_clear_all_settings = "Clear all settings?"
    , allow_multiple_selection = "multiple selection"
    , select_provider = "select provider"
    , drei_metadaten_thanks_1 = "Thanks to "
    , drei_metadaten_thanks_2 = " for providing some of the metadata!"
    , drei_metadaten_link = "http://dreimetadaten.de/"
    , information_overlay_title = "Information"
    , information_overlay_text = "This is a simple app to help you randomly choose audiobooks from a variety of providers. If you are missing content, you can use the Reddit link at the bottom of the page to let me know."
    , information_overlay_provider_text = "You can switch between different providers (Spotify, Deezer, Apple Music, ...) by using the second button from the right in the title bar of the web app. NOTE: not all providers support all of the content!"
    , information_overlay_artist_text = "You can select artists by clicking on the artist icon in the title bar of the web app (rightmost icon in the menubar). You can select multiple artists by enabling the multi-selection mode in the artist selection overlay."
    , information_overlay_copyright_text = "All images and metadata of artists and audiobooks used on this website are the property of their respective owners and are subject to their copyright or usage rights."
    , information_overlay_artist_title = "Artist selection"
    , information_overlay_provider_title = "Provider selection"
    , information_unfinished_provider_integration = "This provider integration is not yet finished, so there is only a limited selection of content available. I am working on improving this integration!"
    , last_updated = "Last updated: "
    }


all : Array Text
all =
    [ germanText
    , englishText
    ]
        |> Array.fromList


fallback : Text
fallback =
    englishText
