
largIndx=0
maxVal=0
smallIndx=0
minVal=1000000
echo "Values are: "
for((indx=0; indx<10; indx++))
do
	var=$(($(($RANDOM%891))+100))
	echo "$var"
	numArr[indx]=$((var))
	if [ $var -gt $maxVal ]
	then
		largIndx=$indx
		maxVal=$var
	elif [ $var -lt $minVal ]
	then
		smallIndx=$indx
		minVal=$var
	fi
done

echo "First max is: " $maxVal
echo "First min is: " $minVal

numArr[largIndx]=0
numArr[smallIndx]=0
maxVal=0
minVal=100000

for((indx=0; indx<10; indx++))
do
	var=${numArr[indx]}
	if [ $var -gt $maxVal -a $var -ne 0 ]
	then
		maxVal=$var
	elif [ $var -lt $minVal -a $var -ne 0 ]
	then
		minVal=$var
	fi
done
echo "Second max is: " $maxVal
echo "Second min is: " $minVal