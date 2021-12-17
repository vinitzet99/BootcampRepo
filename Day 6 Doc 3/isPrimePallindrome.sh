#!/bin/bash -x
read -p "Enter a number: " n1
echo "Entered number is: $n1"
isPrime=0
isPallindrome=0
pallindrome()
{
	n=$1
	flag=0
	sum=0
	echo $n
	while [ $n -ne 0 ]
	do
		r=$((n % 10))
		dig=$((sum * 10))
		sum=$((dig + r))
		n=$((n / 10))
	done
	if ([ $sum -eq $1 ])
	then
		isPallindrome=1
	else
		isPallindrome=0
	fi
}
prime()
{
	n=$1
	flag=0
	for((i=2;i<n;i++))
	do
		ans=$(( n%i ))
		if [ $ans -eq 0 ]
		then
			flag=1
			break
		fi
	done
	if [ $flag -eq 0 ]
	then
		isPrime=1
	else
		isPrime=0
	fi	
}
prime $n1
pallindrome $n1
echo $ispallindrome
echo $isPrime
if ([ $isPallindrome -eq 1 -a $isPrime -eq 1 ])
then
	echo $n1 is Prime and Pallindrome
elif ([ $isPallindrome -eq 1 ])
then
	echo $n1 is Pallindrome
elif ([ $isPrime -eq 1 ])
then
	echo $n1 is Prime
else
	echo $n1 is neither Prime nor Pallindrome
fi
