#!/bin/bash

name="master"

if [ -d "$name" ] 
then
	echo "File is created: $name"
else
	mkdir -p $name
	echo "$name is created"

	for i in f1 f2 f3
	do
		for s in report file log
		do
			filename="${i}_${s}.txt" 
			echo "$filename is created" >> "$name/$filename"
		done
	done
fi

