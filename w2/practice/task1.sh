#!/bin/bash

DATE=$(date +%Y-%m-%d)
folder=prac_$DATE

if [ -d "$folder" ]; then
	echo "Folder exists"
else
	mkdir $folder
fi

touch $folder/report-file.txt

echo "--- Disk Check ---" >> $folder/report-file.txt
df -h >> $folder/report-file.txt

echo "--- Memory Usage ---" >> $folder/report-file.txt
free -h >> $folder/report-file.txt

echo "--- Top 5 Processes ---" >> $folder/report-file.txt
ps aux | head -10 >> $folder/report-file.txt



