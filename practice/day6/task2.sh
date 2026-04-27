#!/bin/bash

folder=health-check

if [ -d "$folder" ]
then
	echo "Folder Already exists"
	exit 1
else
	mkdir -p "$folder"
	echo "Folder created: $folder"

	echo "---DISK-CHECK---" >> $folder/disk-check.txt
	df -h >> $folder/disk-check.txt
	
	echo "---MEMOERY-USAGE---" >> $folder/memory-usage.txt
	free -h >> $folder/memory-usage.txt

	echo "---TOP 5 PROCESSES---" >> $folder/processes.txt
	ps aux --sort=-%cpu | head -5 >> $folder/processes.txt

fi
