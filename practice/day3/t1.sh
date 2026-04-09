#!/bin/bash

name="pushpraj"
file=info_$(date +%Y-%m-%d_%H:%M:%S)

if [ -d "$file" ]
then
	echo "File Already exists"
else
	touch $file
	echo "$name" >> "$file"
fi
