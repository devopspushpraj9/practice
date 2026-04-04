#!/bin/bash

for i in web db cache
do
	mkdir -p "backup_$i"
	echo "Folder created: $backup_$i"
done
