read -p "enter an integer: " n
echo "Entered number is: " $n
i=2
count=0
count2=0
flag=0
declare -A primeFactor
echo "Calculating Prime Factor: "
for ((i;i<$n;))
do    
  if [ `expr $n % $i` -eq 0 ]
  then
		factor=$i
		for ((j=2;j<=`expr $factor / 2`;))
		do
			flag=0
			if [ `expr $factor % $j` -eq 0 ]
			then
				flag=1
				break
			fi
			j=`expr $j + 1`
		done
		if [ $flag -eq 0 ]
		then
			count=1
			primeFactor[$count2]=$factor
			count2=$((count2+1))
		fi
	fi
  i=`expr $i + 1`
done
echo "Prime Factors are: "
if [ $count -eq 0 ]
then
  echo "1 and" $n
else
	for((i=0;i<${#primeFactor[@]};i++))
	do
		echo "${primeFactor[$i]}"
	done
fi