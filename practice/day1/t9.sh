#!/bin/bash

name=system-health-check
file=$name/s-h-c.txt

if [ -d "$name" ]
then
	echo "$name Folder Already exists"
else
	mkdir -p "$name"
	echo "Folder created: $name"
fi

if [ -f "$file" ]
then
	echo "$file Already exists"
else
	echo "File created: $file"	
	echo "---Disk Usage---" >> $file
	df -h >> $file
	echo "" >> $file
	echo "---Memory Check---" >> $file
	free -h >> $file
	echo "" >> $file
	echo "---Top Processes---" >> $file
	ps aux --sort=-%cpu | head -6 >> $file
fi
