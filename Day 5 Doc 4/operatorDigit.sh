#!/bin/bash/ -X

read -p "enter three digits by giving spaces:" a b c

max=0
min=10000
sum=0

	sum=$(($(($a + $b)) * $c))
	echo -e "\nAns1 is:" $sum
	if [ $sum -gt $max ]
	then
		max=$sum
	fi
	if [ $sum -lt $min ]
	then
		min=$sum
	fi


	sum=$(($(($c + $a)) / $b))
	echo -e "\nAns2 is:" $sum
	if [ $sum -gt $max ]
	then
		max=$sum
	fi
	if [ $sum -lt $min ]
	then
		min=$sum
	fi

	sum=$(($(($a % $b)) + $c))
	echo -e "\nAns3 is:" $sum
	if [ $sum -gt $max ]
	then
		max=$sum
	fi
	if [ $sum -lt $min ]
	then
		min=$sum
	fi

	sum=$(($(($a * $b)) + $c))
	echo -e "\nAns4 is:" $sum
	if [ $sum -gt $max ]
	then
		max=$sum
	fi
	if [ $sum -lt $min ]
	then
		min=$sum
	fi

	echo -e "\n$max is greatest."
	echo -e "\n$min is smallest."