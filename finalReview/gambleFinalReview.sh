#Bet Rs. 1 on Rs. 100 till total amount is Rs. 100 or Rs. 0
amount=100
won=0
total=0
while [ $amount -ne 0 -a $amount -ne 200 ]
do
	w=$((RANDOM%2))
	if ([ $w -eq 0 ])
	then
		won=$((won+1))
		amount=$((amount+1))
	else
		amount=$((amount-1))
	fi
	total=$((total+1))
	echo $amount
done
if ([ $amount -eq 200 ])
then
	echo "Final $amount after $won wins in $total"
else
	echo "Final $amount is after $won loose in $total"
fi
