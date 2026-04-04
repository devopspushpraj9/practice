#!/bin/bash

date=$(date +%Y-%m-%d)
folder=backup_$date
file=$folder/file.txt
mkdir $folder
touch $file
