read -p "enter an integer: " n
echo "Entered number is: " $n
i=2
count=0
flag=0
echo "Prime factors are: "
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
			echo $factor
		fi
	fi
  i=`expr $i + 1`
done
if [ $count -eq 0 ]
then
  echo "1 and" $n
fi
