
i=1
while [ $i -le 11 ]
do
	w=$((RANDOM%2))
	if ([ $w -eq 1 ])
	then
		echo "You Won $i times."
		i=$((i+1))
	else
		echo "You lost."
	fi	
done