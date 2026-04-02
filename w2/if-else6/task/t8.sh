#!/bin/bash

if [ -d "$folder" ]
then
	echo "Folder already exists: $folder"
else
	mkdir -p "$folder"
	echo "folder created: $folder"
fi
