#!/bin/bash
OLDIFS=$IFS
IFS=","

HEADVALS=$( head -n 1 $1 )
HEADMOD=$( echo ${HEADVALS// /_} )
HEADMOD=$( echo ${HEADMOD//\//_per_} )
HEADMOD=$( echo ${HEADMOD//[][]/} )
HEADMOD=$( echo ${HEADMOD//%/_percent} )

echo -e "Header Vals from $1:\n-------------------\n$HEADVALS\n\nModed Header Vals:\n$HEADMOD"

while read $HEADMOD
do
echo -e "IDXnum: $i = $HEADMOD\n"
done < $1

IFS=$OLDIFS
