#!/bin/bash

folder="SUB"
file="$folder/sub.txt"

if [ -d "$folder" ]
then
	echo "Folder Already exists"
else
	mkdir -p $folder
	echo "Folder created: $folder"
	sub=("COM":65 "MATH":64)
	
	count=1
	for i in ${sub[@]}
	do
		echo "$count: $i"
		((count++))
	done
fi
