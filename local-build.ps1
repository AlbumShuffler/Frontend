#!/usr/bin/env pwsh

param (
    [string]$client_id,
    [string]$client_secret,
    [string]$input_file
)

# Check the number of arguments
if ($args.Length -ne 3) {
    Write-Host "Usage: $0 <client_id> <client_secret> <input_file>"
    exit 1
}

# Check if the input file exists
if (-not (Test-Path -Path $input_file)) {
    Write-Host "Error: The file '$input_file' does not exist."
    exit 1
}

# Resolve the full path of the source file
$source_file = Resolve-Path -Path $input_file

# Resolve the full path of the destination directory
$destination = Resolve-Path -Path "../spotify_data"

# Download the data retriever
Remove-Item -Recurse -Force spotify_data -ErrorAction SilentlyContinue
Invoke-WebRequest -Uri "https://github.com/AlbumShuffler/DataRetriever/archive/refs/heads/master.zip" -OutFile "master.zip"
Remove-Item -Recurse -Force DataRetriever-master -ErrorAction SilentlyContinue
Expand-Archive -Path "master.zip" -DestinationPath "."
Remove-Item -Path "master.zip"
Set-Location -Path "DataRetriever-master"
./refresh_all_data $client_id $client_secret $source_file $destination
Set-Location -Path ".."
Remove-Item -Recurse -Force DataRetriever-master

# Download the latest version of the generator project, extract it and install its dependencies
Invoke-WebRequest -Uri "https://github.com/AlbumShuffler/Generator/archive/refs/heads/master.zip" -OutFile "master.zip"
Remove-Item -Recurse -Force Generator-master -ErrorAction SilentlyContinue
Expand-Archive -Path "master.zip" -DestinationPath "."
Remove-Item -Path "master.zip"
Set-Location -Path "Generator-master"
npm install
$env:ALBUM_SHUFFLER_GENERATOR_SOURCE_URL = "file://$source_file"
$env:ALBUM_SHUFFLER_GENERATOR_ARTIST_DETAILS_URL = "file://$destination/'${artistId}'/artist"
$env:ALBUM_SHUFFLER_GENERATOR_ALBUMS_URL = "file://$destination/'${artistId}'/albums"
node index.js --destination="../src/"
Set-Location -Path ".."
Remove-Item -Recurse -Force Generator-master
