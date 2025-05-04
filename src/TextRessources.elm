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
