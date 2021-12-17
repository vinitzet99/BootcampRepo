
sort(){
    for((i=${#number[@]}-1;i>=0; i--)); do
        for((j=1;j<=$i; j++)); do
            if [[ ${number[j-1]} -gt ${number[j]} ]]; then
                temp="${number[j-1]}"
                number[j-1]="${number[j]}"
                number[j]="$temp"
            fi
        done
    done
}
echo "Random number: "
for((i=0;i<10;i++))
do
	number[$i]=$((RANDOM%10))
	echo ${number[$i]}
done


sort $number

echo "Sorted: "
for((i=0;i<10;i++))
do
	echo ${number[$i]}
done

min=${number[0]}
max=${number[9]}
echo "Finding second minimum: "
for((i=1;i<10;i++))
do
	if([ $min -lt ${number[$i]} ])
	then
		 echo "second minimum element in array is " ${number[$i]}
		 break
	fi
done
echo "Finding second maximum: "
for((i=8;i>-1;i--))
do
	if([ $max -gt ${number[$i]} ])
	then
		 echo "second maximum element in array is " ${number[$i]}
		 break
	fi
done

