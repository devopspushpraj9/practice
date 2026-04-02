#!/bin/bash

name="backup"
file="$@"

if [ -d "$name" ] 
then
	echo "Folder already exists: $name"
else
	mkdir -p "$name"
	echo "Folder created: $name"
fi
