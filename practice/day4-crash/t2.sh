#!/bin/bash

folder="backup"
file="$folder/log.txt"
log="[2025-03-20 08:00] INFO: Application started
[2025-03-20 08:05] INFO: User Pushpraj logged in
[2025-03-20 08:10] WARNING: CPU usage 85%
[2025-03-20 08:15] ERROR: Database connection lost
[2025-03-20 08:20] INFO: Backup started
[2025-03-20 08:25] WARNING: Disk almost full
[2025-03-20 08:30] INFO: API call success
[2025-03-20 08:35] ERROR: Invalid input data
[2025-03-20 08:40] WARNING: Query took 4 seconds
[2025-03-20 08:45] INFO: Cache updated
[2025-03-20 08:50] ERROR: File access denied
[2025-03-20 08:55] INFO: Task completed
[2025-03-20 09:00] WARNING: Certificate warning
[2025-03-20 09:05] INFO: Health check OK
[2025-03-20 09:10] ERROR: Network issue"

if [ -d "folder" ]
then
	echo "Folder is exists"
else
	mkdir -p "$folder"
	echo "Folder created: $folder"
	echo "$log" >> $file
	echo "find ERROR in $file" >> $folder/Total-ERROR:X
	grep "ERROR" $file | sort | uniq >> $folder/Total-ERROR:X
fi
