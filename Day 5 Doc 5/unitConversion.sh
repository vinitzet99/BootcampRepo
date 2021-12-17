
read -p "enter a value in feet:" feet


echo -e "\nConverting Feet to Inch"
		inch=$(($feet*12))
		echo -e "\n $feet ft is equal to $inch in"

echo -e "\nConverting Inch to Feet"
		feet=$(($inch/12))
		echo -e "\n $inch in is equal to $feet ft."

echo -e "\nConverting Feet to Meter."
		meter=$(($feet/3))
		echo -e "\n $feet ft is equal to $meter m approx."
	


echo -e "\nConverting Meter to Feet."
		feet=$(($meter*3))
		echo -e "\n $meter m is equal to $feet ft approx."

