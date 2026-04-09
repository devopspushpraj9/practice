#!/bin/bash

src="FOLDER"
backup="backup_$(date +%Y-%m-%d_%H:%M:%S)"

mkdir -p $src
mkdir -p $backup

if [ -d "$src" ]
then
	cp -r "$src" "$backup"
	echo "Backup created: $backup"
else
	echo "Source folder '$src' not found!"
fi

if [ -d "$backup" ]
then
	echo "Verification: Backup folder exists"
	ls -l "$backup"
else
	echo "Verification failed: Backup not found"
fi

