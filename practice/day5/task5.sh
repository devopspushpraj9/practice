#!/bin/bash

Cricketers=("Rohit_Sharma" "Suryakumar_Yadav" "Jasprit_Bumrah" "Tilak_Varma" "Naman_Dhir")

count=1
for i in ${Cricketers[@]}
do
	echo "My Favourite cricketers $count: $i"
	((count++))
done
