#!/bin/sh
# extract chapter from mkv
set -e

fullfilename=$(basename "$1")

mkvextract chapters "$1" --redirect-output "${fullfilename%.*}.xml"

echo "Fini !"
