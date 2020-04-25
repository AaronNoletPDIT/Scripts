#!/bin/bash
OLDIFS=$IFS
IFS=","

HEADVALS=$( head -n 1 $1 )
HEADMOD=$( sed -i 's/ /_/g' $HEADVALS)

echo -e "Header Vals from $1:\n-------------------\n$HEADVALS\n\n\n$HEADMOD"

< $1
