#!/bin/bash

for i in "$@"
do
	if [ -d "$i" ]; then
		filename="${i}_report.txt"
		echo "Report generated for $i" > "$i/$filename"
		echo "Created file: $filename inside folder $i"
	else
		echo "The $i Folder creation failed!"
	fi
done

