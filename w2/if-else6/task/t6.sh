#!/bin/bash

name="f1"

if [ -d "$name" ]
then
	echo "folder exists"
else
	mkdir -p "name"
	echo "Folder Created: $name"
fi
