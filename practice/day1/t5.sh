#!/bin/bash

folder="$(date +%Y-%m-%d)_project"

if [ -d "$folder" ]
then
	echo "Folder is Already exists"
	exit 1
else
	mkdir -p $folder
	echo "Folder created: $folder"
fi

for i in "file1" "file2" "file3" "file4"
do
	touch $folder/$i
	echo "File created: $i"
done

