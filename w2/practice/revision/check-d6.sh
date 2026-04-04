#!/bin/bash

name="/home/$USER/Downloads"

if [ -d "$name" ]
then
	echo "Donloads folder present"
	exit 1
else
	echo "Missing: $name"
fi
