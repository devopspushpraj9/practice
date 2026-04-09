#!/bin/bash

name="folder"

if [ -d "$name" ]
then
	echo "Folder already exists"
else
	mkdir -p "$name"
	echo "Folder created: $name"

	for i in f1 f2 f3 f4 
	do
		echo "$i created" >> $name/$i
	done
fi
