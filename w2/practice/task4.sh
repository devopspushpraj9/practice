#!/bin/bash

echo "=== Argument-Based Folder + Report Generator ==="

for i in "$@"
do
	mkdir -p "$i"
	echo "Folder Created: $i"

	filename="${i}_report.txt"
	echo "File name is : $filename"

	echo "Report generated for $i" > "$i/$filename"
	echo "Created file: $filename"
done
