

read -p "Enter a year in four digit:" year

	if [ $(($year%4)) -eq 0 ]
	then
			if [ $(($year%100)) -ne 0 ]
			then
					echo $year "is leap year."
			elif [ $(($year%400)) -eq 0 ]
			then
					echo $year "is leap year."
			else
					echo $year "is not leap year."
			fi
	else
			echo "not leap year."
	fi
