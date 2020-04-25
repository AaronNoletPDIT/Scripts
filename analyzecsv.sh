#!/bin/bash
OLDIFS=$IFS
IFS=","

HEADVALS=$( head -n 1 $1 )

echo -e "Header Vals from $1:\n-------------------\n$HEADVALS\n"

< $1
