#!/bin/bash

name="folder"

if [ -d "$name" ]
then
	echo "$name Folder Already exists"
	exit 1
else
	mkdir -p $name
	echo "Folder created: $name"
	exit 0
fi
