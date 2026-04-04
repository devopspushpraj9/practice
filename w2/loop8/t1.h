#!/bin/bash

name="folder"
report="$name/system_report.txt"

# Step 1: Folder check
if [ -d "$name" ]
then
    echo "Folder already exists"
else
    mkdir -p "$name"
    echo "Folder created: $name"
fi

# Step 2: Loop
for i in 1 2 3 4
do
    echo "Iteration $i" >> "$report"
    echo "-----------------" >> "$report"

    echo "Disk Check" >> "$report"
    df -h >> "$report"
    echo "" >> "$report"

    echo "Memory Usage" >> "$report"
    free -h >> "$report"
    echo "" >> "$report"

    echo "Top 5 Processes" >> "$report"
    ps aux --sort=-%cpu | head -6 >> "$report"
    echo "" >> "$report"
done

