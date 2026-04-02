#!/bin/bash

file="data.txt"

if [ -f "$file" ]; then
	echo "data exists"
	cat $file

else
	echo Initial data > $file
	echo "File created"
fi

