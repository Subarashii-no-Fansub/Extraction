#!/bin/sh
# extract chapter from mkv
set -e

fullfilename=$(basename "$1")

mkvextract chapters "$1" > "${fullfilename%.*}.xml"

echo "Fini !"
