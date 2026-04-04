#!/bin/bash

name=backup

for i in $1 $2 $3 $4
do
	mkdir -p "$name"
	touch "$name/$i"
	echo "$name/$i is created"
done
