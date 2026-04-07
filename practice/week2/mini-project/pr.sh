#!/bin/bash

name=backup_$(date +%Y-%m-%d)

if [ -d "$name" ]
then
	echo "$name Already exists"
else
	mkdir -p $name
	echo "Folder created: $name"

	echo "---DISK USAGE---" >> $name/Disk-Usage.txt
	df -h >> $name/Disk-Usage.txt
	
	echo "---Memory Check---" >> $name/Memory-Check.txt
	free -h >> $name/Memory-Check.txt

	echo "---Top Processes---" >> $name/Processes.txt
	ps aux --sort=-%cpu | head -6 >> $name/Processes.txt

fi
