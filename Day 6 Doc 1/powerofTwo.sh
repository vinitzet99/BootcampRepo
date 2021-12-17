
read -p "Enter Number n" n
echo Entered number $n
t=2
for((num=1;$(($t**num)) <= $(($t**$n));num++))
do
	echo 2 power $num is: $((2**$num))
done