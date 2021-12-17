#!/bin/bash -x
read -p "Think a number between 1-100. Press any key when done." x
mn=1
mx=100
mid=0
E="E"
Q="Q"
G="G"
L="L"
while true
do
	l=$((mx-mn))
	mid=$((l/2+mn))
	read -p "Is number less than (Enter L), greater than (Enter G), equal to (Enter E) to $mid. Enter Q to quit: " inp
	if ([ "$inp" == "$L" ])
	then
		echo "Your number is less than $mid"
		mx=$mid	
	
	elif ([ "$inp" == "$G" ])
	then	
		echo "Your number is more than $mid"
		mn=$mid
		
	elif ([ "$inp" == "$E" ])
	then
		echo "We found your number. Your number is $mid!!!"
		break
		
	elif ([ "$inp" == "$Q" ])
	then
		echo "You quitted."
		break
	else
		echo "Invalid Input"
	fi
done
