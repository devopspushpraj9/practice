#!/bin/bash

folder="server"
file="$folder/server.txt"

mkdir -p $folder

for i in "web1" "db1" "cache1"
do
	echo "Server: $i" >> $file
done
