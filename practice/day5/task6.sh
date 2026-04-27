#!/bin/bash

folder="players"
file=$folder/players.txt

if [ -d "$folder" ]
then
	echo "Folder Already exists"
else
	mkdir -p $folder
	echo "Folder is created: $folder"
	echo "---MI TOP-4 PLAYERS---" >> $file
	name=("Rohit_sharma" "Jasprit_bumrah" "Suryakumar_yadav" "Tilak_varma")
	count=1
	for i in ${name[@]}
	do
		echo "$count: $i" >> $file
		((count++))
	done
fi
