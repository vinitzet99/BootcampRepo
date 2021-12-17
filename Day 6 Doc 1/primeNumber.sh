read -p "Enter a number: " n
echo "Entered number is : "$n
flag=0
for((i=2;i<n;i++))
do
	ans=$(( n%i ))
	if [ $ans -eq 0 ]
	then
		flag=1
		break
	fi
done
if [ $flag -eq 0 ]
then
	echo $n is prime
else
	echo $n is not prime
fi		