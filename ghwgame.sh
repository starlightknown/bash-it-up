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

#first mascot battle

mascot=$(( $RANDOM % 2))

echo "Ada Lovelace approaches you to attack with her computer. Prepare to 
battle. Pick a number between 0-1. (0/1)"

read hacker

if [[ $mascot == $hacker ]]; then
	echo "Mascot DEFEATED!! congratulations hacker,you got a famous 
charecter than the mascot"
else
	echo "mascot wins! Better luck next time"
	exit 1
fi

sleep 2

echo "Bot battle. Get ready. It's Bit the Bot. Pick a number 0-9. (0-9)"

read hacker

mascot=$(($RANDOM %10))
if [[ $mascot == $hacker || $hacker == $type || $type == "rick astley" ]]; 
then
        echo "Mascot DEFEATED!! congratulations hacker,you got a famous
charecter than the mascot"
else
        echo "mascot wins! Better luck next time"
        exit
fi
