#!/bin/bash

name="report"

if [ -d "report" ]
then
	echo "Folder is exists: $name"
else
	mkdir -p $name
	echo "$name Folder is created"

	for i in f1 f2 f3
	do
		report=${i}_report.txt
		echo "$report is created" >> $name/$report
		txt=${i}_file.txt
		echo "$txt is created" >> $name/$txt
		log=${i}_log.txt
		echo "$log is created" >> $name/$log
done
fi

