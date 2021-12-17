
read -p "Enter number1: " n1
read -p "Enter number2: " n2
echo "Entered range is : " $n1 " to " $n2
for((j=n1;j<=n2;j++))
do
	flag=0
	for((i=2;i<$j;i++))
		do
			ans=$(( j%i ))
			if [ $ans -eq 0 ]
				then
					flag=1
					break
			fi
		done
	if [ $flag -eq 0 ]
	then
		echo $j is prime
	else
		echo $j is not prime
	fi
done	