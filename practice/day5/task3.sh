#!/bin/bash

folder="Bikes-List"
file=$folder/Bikes.txt

if [ -d $folder ]
then
	echo "Folder Already exists"
else
	mkdir -p $folder
	echo "Folder created: $folder"
	bikes=("Royal_Enfield_Continental_GT_650"
           "Triumph_Thruxton_1200_RS"
           "Triumph_Thruxton_400"
           "BMW_R_12_nineT"
           "Husqvarna_Vitpilen_250"
           "Ducati_Scrambler_Cafe_Racer"
           "Kawasaki_Z650RS"
           "Kawasaki_Z900RS_Cafe"
           "Moto_Guzzi_V7_Stone_Corsa"
           "Keeway_SR_250"
           "TVS_Ronin"
           "Honda_CB350RS"
           "Yamaha_XSR155"
           "Zontes_GK350"
           "Norton_Commando_961"
           "Husqvarna_Vitpilen_401"
           "Atumobile_AtumVader")
	echo "${bikes[@]}" >> $file
	echo "---Cafe Racer Bikes---" >> $folder/cafe-racer-bikes.txt
	count=1
	for i in ${bikes[@]}
	do
		echo "$count. $i" >> $folder/cafe-racer-bikes.txt
		((count++))
	done
	a_bikes=("Royal_Enfield_Himalayan_450"
             "KTM_390_Adventure"
             "BMW_G_310_GS"
             "Hero_XPulse_210"
             "Yamaha_Ténéré_700"
             "Honda_Africa_Twin"
             "Triumph_Tiger_900"
             "BMW_R_1300_GS"
             "Ducati_DesertX"
             "Suzuki_V-Strom_800DE"
             "Aprilia_Tuareg_660"
	     "Harley-Davidson_Pan_America_1250")
     	echo "${a_bikes[@]}" >> $file
	     echo "---Adventure Bikes---" >> $folder/adventure-bikes.txt
	     count=1
	     for u in ${a_bikes[@]}
	     do
		     echo "$count. $u" >> $folder/adventure-bikes.txt
		     ((count++))
	     done
fi
