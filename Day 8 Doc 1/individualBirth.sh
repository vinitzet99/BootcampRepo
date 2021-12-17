individual=50
month=12


declare -A dictIndividual

for((j=1; j<=$month; j++))
do
	dictIndividual[$j]=0
	
done

for((i=0; i<$individual; i++))
do
	m=$(($(($RANDOM%12))+1))
	dictIndividual[$m]=$((${dictIndividual[$m]}+1))
done
for((j=1; j<=$month; j++))
do
	echo "$j month has ${dictIndividual[$j]} individuals."
done
