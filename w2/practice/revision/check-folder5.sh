#!/bin/bash

date=$(date +%Y-%m-%d)
name="backup_$date"

if [ -d "$name" ]
then
	echo "Already exists"
	exit 1
else
	mkdir -p $name
	echo "Folder created: $name"
	exit 0
fi
