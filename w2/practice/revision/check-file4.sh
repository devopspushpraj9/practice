#!/bin/bash

name="config.txt"

if [ -f "$name" ]
then
	echo "Config loaded"
	exit 1
else
	echo "Config missing"
	exit 0
fi
