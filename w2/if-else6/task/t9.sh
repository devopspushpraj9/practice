#!/bin/bash

name="imp"

if [ -d "$name" ]
then
	echo "folder is exists: $name"
else
	mkdir -p "$name"
	echo "folder is created: $name"
	for i in file1 file2 file3 file4
 do

		echo "$i_report.txt is created" > "$name/${i}_report.txt"
	done
fi
