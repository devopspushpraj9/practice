#!/bin/bash

folder="mumbai_indians"
file="$folder/mi.txt"

if [ -d "$folder" ]
then
	echo "Folder Already exists"
else
	mkdir -p "$folder"
	echo "Folder created: $folder"
	
	Mi_batters=("Rohit_Sharma" "Suryakumar_Yadav" "Tilak_Varma" "Ryan_Rickelton" "Sherfane_Rutherford") 
	Mi_wicket_keepers=("Quinton_de_Kock" "Ryan_Rickelton" "Robin_Minz")
	Mi_all_rounders=("Hardik_Pandya" "Mitchell_Santner" "Will_Jacks" "Corbin_Bosch" "Raj_Angad_Bawa" "Shardul_Thakur" "Naman_Dhir")
	Mi_spin_bowlers=("Mayank_Markande" "Mitchell_Santner(Spin-All-rounder)" "Allah_Ghazanfar" "Atharva_Ankolekar(Spin_All-rounder)" "Will_Jacks(Spin_All-rounder)")
	Mi_pacers=("Jasprit_Bumrah" "Trent_Boult" "Deepak_Chahar" "Ashwani_Kumar" "Mohammad_Izhar" "Hardik_Pandya(All-rounder)" "Shardul_Thakur(All-rounder)" "Corbin_Bosch(All-rounder)")
	echo "---Mi_Batters---" >> $file
	echo ${Mi_batters[@]} >> $file
	echo "" >> $file
	echo "---Mi_wicket_keepers---" >> $file
	echo ${Mi_wicket_keepers[@]} >> $file	
	echo "" >> $file
	echo "---Mi_all_rounders---" >> $file
	echo ${Mi_all_rounders[@]} >> $file
	echo "" >> $file
	echo "---Mi_spin_bowlers---" >> $file
	echo ${Mi_spin_bowlers[@]} >> $file
	echo "" >> $file
	echo "---Mi_pacers---" >> $file
	echo ${Mi_pacers[@]} >> $file
	echo "" >> $file
	
	echo "---Mi_batters---" >> $folder/mi-batters.txt
	count=1
	for b in ${Mi_batters[@]}
	do
		echo "$count: $b" >> $folder/mi-batters.txt
		((count++))
	done

	echo "---Mi_wicket_keepers---" >> $folder/mi-wicketkeepers.txt

	count=1
	for w in ${Mi_wicket_keepers[@]}
	do
		echo "$count: $w" >> $folder/mi-wicketkeepers.txt
		((count++))
	done

	echo "---Mi_all_rounders---" >> $folder/mi-allrounders.txt
	
	count=1
	for a in ${Mi_all_rounders[@]}
	do
		echo "$count: $a" >> $folder/mi-allrounders.txt
		((count++))
	done

	echo "---Mi_spin_bowlers---" >> $folder/mi-spinbowlers.txt

	count=1
	for s in ${Mi_spin_bowlers[@]} 
	do
		echo "$count: $s" >> $folder/mi-spinbowlers.txt
		((count++))
	done

	echo "---Mi_pacers---" >> $folder/mi-pacers.txt

	count=1
	for p in ${Mi_pacers[@]}
	do
		echo "$count: $p" >> $folder/mi-pacers.txt
		((count++))
	done
fi
