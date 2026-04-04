#!/bin/bash

name="backup.tar.gz"

if [ -f "$name" ]
then
	echo "Backup found"
	exit 1
else
	echo "No backup"
	exit 0
fi
