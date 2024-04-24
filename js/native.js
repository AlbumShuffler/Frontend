let coverContainer = null;
let colorOverlay = null;
let image = null;
let currentCoverChangeState = null;
let newCoverUrl = null;

const CoverChangeState = {
    FadingCoverOut: 1,
    FadingCoverIn: 2,
    Finished: 3
}

function changeAlbum(coverUrl) {
    currentCoverChangeState = currentCoverChangeState || CoverChangeState.Finished;
    switch(currentCoverChangeState) {
        case CoverChangeState.FadingCoverOut:
            console.log("Fading out, ignoring change request");
            return false;
        case CoverChangeState.FadingCoverIn:
            console.log("Fading in, ignoring change request");
            return false;
        case CoverChangeState.Finished:
            newCoverUrl = coverUrl;
            currentCoverChangeState = CoverChangeState.FadingCoverOut;
            coverContainer.classList.add('u--fadeOutRight');
            return false;
        default:
            console.error("Invalid cover change state", currentCoverChangeState);
            return false;
    }
}

function animationFinished() {
    switch(currentCoverChangeState) {
        case CoverChangeState.FadingCoverOut:
            console.log("Fading out finished");
            coverContainer.style.backgroundImage = `url(${newCoverUrl})`;
            image.srcset = newCoverUrl;
            image.opacity = 0;
            currentCoverChangeState = CoverChangeState.FadingCoverIn;
            coverContainer.classList.remove('u--fadeOutRight');
            coverContainer.classList.add('u--fadeInRight');
            break;
        case CoverChangeState.FadingCoverIn:
            console.log("Fading in finished");
            coverContainer.classList.remove('u--fadeInRight');
            currentCoverChangeState = CoverChangeState.Finished;
            break;
        default:
            console.error("Invalid cover change state", currentCoverChangeState);
            return;
    }
}

function registerCallbacks() {
    coverContainer = document.getElementById("cover-container");
    if (!coverContainer) { 
        console.error("cover-container not found, stopping registration");
        return;
    }
    coverOverlay = document.getElementById("background-color-overlay");
    if (!coverOverlay) {
        console.error("background-color-overlay not found, stopping registration");
        return;
    }

    image = document.getElementById("cover-img");
    if (!image) {
        console.error("cover-image not found, stopping registration");
        return;
    }

    console.log("registering callbacks");
    addEventListener("animationend", animationFinished);
}