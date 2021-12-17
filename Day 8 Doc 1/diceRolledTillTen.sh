count=10

declare -A dictDice

dictDice[1]=0
dictDice[2]=0
dictDice[3]=0
dictDice[4]=0
dictDice[5]=0
dictDice[6]=0

min=10
max=0 
mx=0
mn=0

while [ $max -lt $count ]
do
	dice=$(($(($RANDOM%6))+1))
	dictDice[$dice]=$((${dictDice[$dice]}+1))
	
	if [ ${dictDice[$dice]} -ge $max ]
	then
		max=${dictDice[$dice]}
		mx=$dice
	fi
done
for((i=1; i<=6; i++))
{
	echo "Rolled $i ${dictDice[$i]} times."
	if [ ${dictDice[$i]} -lt $min ]
	then
		min=${dictDice[$i]}
		mn=$i
	fi
}
echo ""
echo "Rolled $mx 10 times - maximum."
echo "Rolled $mn $min time - minimum."
