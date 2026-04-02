#!/bin/bash

folder=reports_$(date +%Y-%m-%d)
mkdir -p "$folder"

for i in "$@"
	do
		echo "This is report for $i" >> $folder/$i.txt
		echo "Created file: $i.txt"
	done
