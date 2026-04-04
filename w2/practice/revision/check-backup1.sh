#!/bin/bash

BACKUP_DIR="/tmp/backup"

if [ -d "$BACKUP_DIR" ] 
then
	echo "Backup folder already exists"
	exit 1
else
	mkdir -p $BACKUP_DIR
	echo "Backup folder created at $BACKUP_DIR"
	exit 0
fi
