

start=0
max=0
min=100000


while [ $start -lt 5 ]
	do
		randomNum=$(($(($RANDOM%891))+100))
		echo -e "\nRandom no is: $randomNum"

		if [ $randomNum -gt $max ]
		then
			max=$randomNum
		fi
	
		if [ $randomNum -lt $min ]
		then
			min=$randomNum
		fi

		start=$((start + 1))
	done

echo -e "Greatest of number is: $max" 
echo -e "Smallest of number is: $min" 
