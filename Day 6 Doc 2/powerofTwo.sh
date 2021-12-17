
read -p "Enter Number n" n
echo Entered number $n
t=2
i=1
num=0
mx=256
while [ $(($t**$i)) -le $(($t**$n)) ]
do
	echo 2 power $i is: $((2**$i))
	
	num=$((2**$i))
	if [ $num -eq $mx ]
	then
		echo "Reached 256"
		break
	fi
	i=$((i+1))
done