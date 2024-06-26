# Spotify Album Shuffler

See a live version of this app [here](https://kassettenwechsler.de). Current build status:

[![Deployment on GitHub Pages](https://github.com/b0wter/shuffler-frontend/actions/workflows/build.yml/badge.svg?branch=master)](https://github.com/b0wter/shuffler-frontend/actions/workflows/build.yml)

The web app give you (random) recommendations from a previously defined pool of artists/playlists from Spotify. You can put in as many artists/playlists as you like and switch them on the fly.

## Building
This project is not configurable in the usual sense. Artists/albums/playlists are generated by source generators and compiled into a release. The reason for that is that it allows the web app to be served without any form of backend service. All data is baked into the web app itself.

There are two projects to help with this:

1. [Data Retriever](https://github.com/AlbumShuffler/DataRetriever) - This project contains script to retrieve metadata and urls from Spotify
2. [Generator](https://github.com/AlbumShuffler/Generator) - This project contains the source generator to convert the JSON data generated by the data retriever into Elm files

Both projects contain readme files that explain their usage. The general idea is that you define an input file that contains all artists and playlists that you want to include in the build. Afterwards, you use the generator project to create the Elm files. 

This repository contains a `local-build` bash script that does all the heavy lifting. Use it like this:
```
./local-build $spotify_client_id $spotify_client_secret $path_to_input_file
```
The `id` and `secret` are given to you by Spotify after creating an integration using their [api](https://developer.spotify.com/).
You will need to write the input file yourself.
Its content and structure is described in [the data retriever repository](https://developer.spotify.com/).

After running the build all you need to do is to put the contents of the `dist` folder on a web server.
Since all content is baked into the app there is no need for any backend service.
