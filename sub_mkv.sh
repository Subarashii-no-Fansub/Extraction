#!/bin/sh
# parameter 1: video $1

set -e

mkvmerge -i "$1"

fullfilename=$(basename "$1")

read -p "Subtitles Track ID: " var_idss
mkvextract tracks "$1" $var_idss:"${fullfilename%.*}.ass"

echo "End!"
