#!/bin/bash

name="backup"

if [ -d "$name" ]
then
	echo "Backup folder already exists"
else
	mkdir -p $name
	echo "Backup folder created"

	touch $name/system_info.txt
	df -h >> $name/system_info.txt
fi
