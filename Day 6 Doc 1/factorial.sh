read -p "Enter number " n
echo "Entered number is: " $n
fact=1
for((i=1;i<=n;i++))
do
	fact=$((fact*i))
	echo $fact
done
echo $n "! is: " $fact