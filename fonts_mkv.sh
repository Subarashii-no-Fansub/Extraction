#!/bin/sh
# extracts all fonts from the specified mkvs
set -e

mkvmerge -i "$1"

fullfilename=$(basename "$1")
mkdir -p "${fullfilename%.*}"
cd "${fullfilename%.*}"

attach=$(mkvmerge -i "$1" | grep Attachment | awk -F" " '{print $3}' | sed 's/://');
mkvextract attachments "$1" $attach;

echo "Fini !"
