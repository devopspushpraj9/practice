#!/bin/bash

time=$(date +%H_%M)
folder="backup_$time"

if [ -d "$folder" ]; then
	echo "Already exists"
	exit 1
else
	mkdir -p $folder
	echo "Folder created: $folder"
	exit 0
fi
