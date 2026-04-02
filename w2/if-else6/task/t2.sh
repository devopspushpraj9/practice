#!/bin/bash

name="folder"
Name="file.txt"
for i in {1..10}; do 
	mkdir -p "$name"
	touch "$name/$Name"
	echo "$i file is created" >> "$name/$Name"
done
