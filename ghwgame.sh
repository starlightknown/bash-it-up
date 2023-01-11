#!/bin/bash
echo "welcome to wonderland, where anything can happen:
please select your charecter
1 - blahaj
2 - rick astley
3 - dobby"

read class

case $class in
	
	1) 	
		type="blahaj"
		attack=100
		description="kills w cuteness"
		;;
	2) 
		type="rick astley"
		attack=70
		description="rick rolls you till you roll away"
		;;
	3)
		type="dobby"
		attack=$((RANDOM % 2))
		description="dobby is free"
		;;
esac

echo "you chose the $type class. Your attack is $attack and it 
will...$description"
