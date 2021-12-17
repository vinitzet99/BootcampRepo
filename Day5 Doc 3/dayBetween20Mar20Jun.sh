
read -p "Enter day: " day 
read -p "Enter month in digit: " month
echo day: $day  month: $month
if ([ $day -gt 19 ] && [ $month -eq 3 ] && [ $day -lt 32 ])
then
	echo " Date between 20 March to 20 Jun"
elif ([ $day -gt 0 ] && [ $month -eq 4 ] && [ $day -lt 31 ])
then
	echo " Date between 20 March to 20 Jun"
elif ([ $day -gt 0 ] && [ $month -eq 5 ] && [ $day -lt 32 ])
then
	echo " Date between 20 March to 20 Jun"
elif ([ $day -gt 0 ] && [ $month -eq 3 ] && [ $day -lt 21 ])
then
	echo " Date between 20 March to 20 Jun"
else
	echo "Date is not valid or not between 20 March to 20 Jun"
fi