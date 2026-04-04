#!/bin/bash

name="report.txt"

if [ -f "$name" ]
then
	echo "$name already exists"
else
	echo "$name is created" >> $name
fi
