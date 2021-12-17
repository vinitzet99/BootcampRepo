
read -p "Enter number n : " n
echo Entered number is : $n
sum=0
num=1
for((i=1;i<=n;i++))
do
	num=$(echo |awk "BEGIN {print 1/$i}")
	
	sum=$(echo |awk "BEGIN {print $sum+$num}")
	
done
echo "sum at $n is $sum"