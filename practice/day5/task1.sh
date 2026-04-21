#!/bin/bash

fruits=("apple" "grapes" "banana" "orange")

count=1
for fruit in ${fruits[@]}
do
	echo "My favouitre fruits: $fruit"
	((count++))
done
