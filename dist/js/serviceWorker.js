let CACHE_NAME = 'my-cache';
let urlsToCache = [
    'css/main.css',    '
    'images/myIcon.png',
    'scripts/index.js'

    ];

self.addEventListener('install', function(event) {
// Perform install steps
    event.waitUntil(
        caches.open(CACHE_NAME)
        .then(function(cache) {
            console.log('Opened cache');
        return cache.addAll(urlsToCache);
        })
    );
});