#!/bin/bash

for file in $@
do
	touch $file
       echo "$file is created"	
done
