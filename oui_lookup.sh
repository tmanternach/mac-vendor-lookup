#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ ! -f "$DIR/oui.txt" ]; then
	$DIR/download-oui.sh
fi
#OUI=$(echo ${1//[:.- ]/} | tr "[a-f]" "[A-F]" | egrep -o "^[0-9A-F]{6}")
OUI=$(echo ${1//[.:.- ]/} | tr "[a-f]" "[A-F]" | colrm 7)

#echo $OUI
VENDOR="$( grep $OUI $DIR/oui.txt | awk -F $'\t' '{print $3}' )"
if [ -z "$VENDOR" ]
then
	echo "No Vendor found for OUI: $OUI"
else
	echo $VENDOR
fi
