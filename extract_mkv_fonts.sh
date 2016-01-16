#!/bin/bash
#extracts all fonts from the specified mkvs
for i in $*; do
	ids=`mkvmerge -i "$i"  | grep -oP '(?<=Attachment ID )[0-9]+'`
	for id in $ids; do 
		mkvextract attachments "$i" $id
	done
done
