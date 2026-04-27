#!/bin/bash

folder="game"
file=$folder/open-world-games.txt

if [ -d "$folder" ]
then
	echo "Folder Already exists"
else
	mkdir -p "$folder"
	echo "Folder created: $folder"
	
	echo "---Top 5 Open World Games---" >> "$file"
	echo "" >> "$file"
	games=("Green_Hell" "The_Forest" "Subnautica" "Rust" "No_Man's_Sky")
	
	count=1
	for i in ${games[@]}
	do
		echo "$count: $i" >> $file
		((count++))
	done
	echo "---Top 5 most realistic games---" >> "$folder/realistic-games.txt"
	echo "" >> "$folder/realistic-games.txt"
	game=("Red_Dead_Redemption_2" "Kingdom_Come:Deliverance_2" "Forza_Horizon_5" "Metro_Exodus" "Ghost_of_Tsushima_Director's_Cut")
	
	count=1
	for i in ${game[@]}
	do
		echo "$count: $i" >> "$folder/realistic-games.txt"
		((count++))
	done
fi
	
	
