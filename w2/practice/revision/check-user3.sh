#!/bin/bash

name=$whoami

if [ -d "$name" ]
then
	echo "Admin"
	exit 1
else
	echo "Regular user"
	exit 0
fi
