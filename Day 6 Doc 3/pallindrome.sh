
read -p "Enter number 1: " num1 
sum=0
isPalindrome()
{
	num=$1
	while [ $num -gt 0 ]
	do
	
		r=$((num%10))
		sum=$(($((sum*10))+r))
		num=$((num/10))
	done
	echo $sum

	if [ $sum -eq $1 ]
	then
		echo "$1 is palindrome Palindrome."
	else
		echo "$1 is not Palindrome."
	fi
}
isPalindrome $num1

