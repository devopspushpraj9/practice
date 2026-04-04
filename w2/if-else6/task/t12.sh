#!/bin/bash

name="folder"

if [ -d "$name" ]
then
	echo "$name is exists"
else
	mkdir -p "$name"
	echo "$name is created"
fi
