#!/bin/bash

name="folder"

if [ -d "$name" ]
then
	echo "Folder is exists"
else
	mkdir -p $name
	echo "$name is created"

	for i in $@
	do
		echo "$i is created" >> $name/$i
	done
fi

