/*
 * Contains all the JS code to initialize the Elm app and
 * manage its ports.
 */

const blacklistedAlbumsKey = "blacklisted-albums";
const lastSelectedArtistsKey = "lastSelectedArtists";
const lastSelectedLanguageKey = "lastSelectedLanguage";
const allowMultipleArtistsKey = "allowMultipleArtists";

function getLegacyBlocklistEntries() {
    if (document.cookie && document.cookie.length > 0) {
        try {
            const key = "ignoredEpisodes="
            return document.cookie.replace(key, "").split("%");
        } catch (e) {
            console.error("Could not load legacy cookie because:", e)
            return [];
        }
    } else {
        return [];
    }
}

function fetchBlacklistedAlbums() {
    const fromCookie = getLegacyBlocklistEntries().map((x) => `3meJIgRw7YleJrmbpbJK6S;;${x}`);
    let content = localStorage.getItem(blacklistedAlbumsKey);
    content = content ? JSON.parse(content) : [];
    const merged = fromCookie.concat(content);
    return merged;
}

function setBlacklistedAlbums(albumIdList) {
    console.log('backlisting', albumIdList.length, 'albums');
    localStorage.removeItem(blacklistedAlbumsKey);
    localStorage.setItem(blacklistedAlbumsKey, JSON.stringify(albumIdList));
}

function fetchBrowserLanguage() {
    const languages = navigator.languages;
    for (const language of languages) {
        if (language.startsWith('de')) {
            return 'de';
        } else if (language.startsWith('en')) {
            return 'en';
        }
    }
    return 'en';
}

function fetchLastSelectedLanguage() {
    const language = localStorage.getItem(lastSelectedLanguageKey);
    if (!language && language !== 'en' && language !== 'de') {
        return "";
    } else {
        return language;
    }
}

function fetchLanguage() {
    const lastSelected = fetchLastSelectedLanguage();
    if (lastSelected && lastSelected !== "") {
        return lastSelected
    } else {
        return fetchBrowserLanguage();
    }
}

function setLastSelectedLanguage(language) {
    localStorage.setItem(lastSelectedLanguageKey, language);
}

function fetchLastSelectedArtists() {
    const artists = localStorage.getItem(lastSelectedArtistsKey);
    if (artists) {
        return JSON.parse(artists);
    } else {
        return [];
    }
}

function fetchLastSelectedProvider() {
    return localStorage.getItem("lastSelectedProvider");
}

function setLastSelectedArtist(httpFriendlyShortNames) {
    console.log('setting selection', httpFriendlyShortNames.length, 'artits')
    localStorage.removeItem(lastSelectedArtistsKey);
    localStorage.setItem(lastSelectedArtistsKey, JSON.stringify(httpFriendlyShortNames));
}

function setLastSelectedProvider(provider) {
    localStorage.setItem("lastSelectedProvider", provider);
}

function fetchAllowMultipleSelection() {
    try {
        const result = JSON.parse(localStorage.getItem(allowMultipleArtistsKey));
        if (result && result !== null) {
            return result;
        } else {
            return false;
        }
    }
    catch (e) {
        console.error(e);
        return false;
    }
}

function setAllowMultipleSelection(allowMultipleArtists) {
    localStorage.setItem(allowMultipleArtistsKey, JSON.stringify(allowMultipleArtists));
}