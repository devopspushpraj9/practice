#!/bin/bash

folder="watches"
file="$folder/watches.txt"

if [ -d "$folder" ]
then
	echo "Folder Already exists"
else
	mkdir -p $folder
	echo "Folder created: $folder"

	echo "World Top 5 Luxury Watch" >> $file
	watches=("Rolex" "Cartier" "Patek_Philippe" "Audemars_Piguet" "Omega")

	count=1
	for i in ${watches[@]}
	do
		echo "$count: $i" >> $file
		((count++))
	done
fi
