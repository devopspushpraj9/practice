#!/bin/bash

Name="backup"

if [ -d $Name ]; then
	echo "Folder is exists"
else
	mkdir $Name
	echo "$Name folder is created"
	for i in "web1" "web2" "web3"; do
		touch $Name/$i
		
	done
fi
