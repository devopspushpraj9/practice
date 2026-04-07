#!/bin/bash

name="server"

if [ -d "$name" ] 
then
	echo "$name is exists"
	exit 1
else
	mkdir -p $name
	echo "Folder created: $name"
fi

for i in "web01" "web02" "cache01"
do
	touch $i >> $name/$i
	echo "$i is created" >> $name/$i
done
