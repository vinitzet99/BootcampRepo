#!/bin/bash -x
amount=100
won=0
lost=0
total=0
while [ $amount -ne 0 -a $amount -ne 200 ]
do
	w=$((RANDOM%2))
	if ([ $w -eq 0 ])
	then
		won=$((won+1))
		amount=$((amount+1))
	else
		lost=$((lost+1))
		amount=$((amount-1))
	fi
	total=$((total+1))
done
if ([ $amount -eq 200 ])
then
	echo "Your amount is $amount after $won wins in $total"
else
	echo "Your amount is $amount after $lost loose in $total"
fi