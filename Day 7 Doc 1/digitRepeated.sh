echo "Range is 0-100"
i=0
for((idx=0; idx<101; idx++))
do
	num=$idx
	sum=0
	while [ $num -gt 0 ]
	do	
		r=$((num%10))
		sum=$(($((sum*10))+r))
		num=$((num/10))
	done

	if ([ $sum -eq $idx ])
	then
		arr[i++]=$idx
	fi
done

echo ${arr[@]}