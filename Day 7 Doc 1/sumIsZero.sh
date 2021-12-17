
read -p "Enter no of elements:" n
declare -A array
for((i=0;i<n;i++))
do
	read -p "Enter $i element: " array[$i]
done
for((i=0;i<$n-2;i++))
do
	i1=$i
	for((j=$i1+1;j<$n-1;j++))
	do
		j1=$j
		for((k=$j1+1;k<$n;k++))
		do
			sum=$((${array[$i]}+${array[$j]}+${array[$k]}))
			if([ $sum -eq 0 ])
			then
				echo "Sum is 0 for ${array[$i]} ${array[$j]} ${array[$k]}"
			fi
		done
	done
done