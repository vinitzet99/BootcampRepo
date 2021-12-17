read -p "Enter single digit (0-9): " digit
echo Entered digit is $digit
if [ $digit -eq 0 ]
then
	echo "Digit in number is: Zero"
elif [ $digit -eq 1 ]
then
	echo "Digit in number is: One"
elif [ $digit -eq 2 ]
then
	echo "Digit in number is: Two"
elif [ $digit -eq 3 ]
then
	echo "Digit in number is: Three"
elif [ $digit -eq 4 ]
then
	echo "Digit in number is: Four"
elif [ $digit -eq 5 ]
then
	echo "Digit in number is: Five"
elif [ $digit -eq 6 ]
then
	echo "Digit in number is: Six"
elif [ $digit -eq 7 ]
then
	echo "Digit in number is: Seven"
elif [ $digit -eq 8 ]
then
	echo "Digit in number is: Eight"
elif [ $digit -eq 9 ]
then
	echo "Digit in number is: Nine"		
else
	echo "Invalid single digit"
fi