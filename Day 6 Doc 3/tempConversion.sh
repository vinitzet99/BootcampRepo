

echo -e "\nSelect any of the below options: "
echo "1. Celsius to Fahrenheit."
read -p "2. Fahrenheit to Celsius " opt 

ans=0
celToFar()
{
	ans=$(echo |awk "BEGIN {print $1 * 9/5 + 32}");
	echo "$1*C in F is: $ans*F"
}

farToCel()
{
	ans=$(echo |awk "BEGIN {print $(($1 -32)) * 5/9}");
	echo "$1*F in C is: $ans*C"
}


	if [ $opt -eq 1 ]
	then
		read -p "Enter temperature in Celsius between O*C to 100*C: " deg 
		celToFar $deg
	elif [ $opt -eq 2 ]
	then
		read -p "Enter temperature in Fahrenheit between 32*F to 212*F: " deg 
		farToCel $deg
	else
		echo -e "Invalid Input. Please try again."
	fi
