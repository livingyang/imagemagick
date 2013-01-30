#!/usr/bin/env bash

convert iTunesArtwork.png -scale 57x57 Icon.png
convert iTunesArtwork.png -scale 114x114 Icon@2x.png
convert iTunesArtwork.png -scale 72x72 Icon-72.png
convert iTunesArtwork.png -scale 29x29 Icon-Small.png
convert iTunesArtwork.png -scale 50x50 Icon-Small-50.png
convert iTunesArtwork.png -scale 58x58 Icon-Small@2x.png
mv iTunesArtwork.png iTunesArtwork
