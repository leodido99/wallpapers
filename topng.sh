#!/usr/bin/env bash

for image in *.jpg; do
	if [[ ! -e "$image" ]]; then continue; fi
	echo "Converting $image to ${image%.jpg}.png"
	convert $image ${image%.jpg}.png
	rm -f $image
done
