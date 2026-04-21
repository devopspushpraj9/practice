#!/bin/bash

colors=(
  "Red" "Blue" "Yellow" "Green" "Orange" "Purple" "Pink" "Brown" 
  "Black" "White" "Grey" "Silver" "Gold" "Crimson" "Scarlet" "Maroon" 
  "Navy" "Azure" "Teal" "Turquoise" "Cyan" "Magenta" "Lime" "Olive" 
  "Emerald" "Forest Green" "Sage" "Indigo" "Violet" "Lavender" "Plum" 
  "Lilac" "Fuchsia" "Rose" "Salmon" "Coral" "Peach" "Apricot" 
  "Tangerine" "Amber" "Saffron" "Gold" "Mustard" "Lemon" "Cream" 
  "Ivory" "Beige" "Tan" "Chocolate" "Coffee" "Mocha" "Charcoal" 
  "Slate" "Ash" "Ebony" "Onyx")

echo "My favourite color is: ${colors[0]}"

echo ""
echo "Total Colors: ${#colors[@]}"
for color in colors ${colors[@]}
do
	echo "Colors: $color"
done
