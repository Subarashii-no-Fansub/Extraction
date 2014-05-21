#!/bin/sh
# paramètre 1 : video $1
set -e

chmod 644 "$1"

mkvmerge -i "$1"

read -p "Numéro des sous-titres : " var_idss
mkvextract tracks $1 $var_idss:soustitre.ass
chmod 644 "soustitre.ass"

echo "Fini !"
