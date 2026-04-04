#!/bin/bash

name="/var/log"

if [ -d "$name" ]
then
	echo "Log directory found"
	exit 1
else
	echo "Log directory missing: $name"
	exit 0
fi
	
