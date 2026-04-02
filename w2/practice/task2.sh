#!/bin/bash

echo "=== Multi-Argument Report Generator ==="

touch $@
for i in $@; do
	echo "$i"
done
