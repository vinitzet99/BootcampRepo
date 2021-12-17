read -p "Enter days (1-7) of week in digit: " day
echo Entered day is $day
if [ $day -eq 1 ]
then
	echo "Week day is: Sunday"
elif [ $day -eq 2 ]
then
	echo "Week day is: Monday"
elif [ $day -eq 3 ]
then
	echo "Week day is: Tuesday"
elif [ $day -eq 4 ]
then
	echo "Week day is: Wednesday"
elif [ $day -eq 5 ]
then
	echo "Week day is: Thursday"
elif [ $day -eq 6 ]
then
	echo "Week day is: Friday"
elif [ $day -eq 7 ]
then
	echo "Week day is: Saturday"	
else
	echo "Invalid day"
fi