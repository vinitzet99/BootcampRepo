

read -p "enter number between 1 to 7 for getting weekday:" num

	case $num in 
		1)
		echo "Monday";;
		2)
		echo "Tuesday";;
		3)
		echo "Wednesday";;
		4)
		echo "Thursday";;
		5)
		echo "Friday";;
		6)
		echo "Saturday";;
		7)
		echo "Sunday";;
		*)
		echo "Invalid Day"
		;;
	esac