
read -p "Enter number" num
echo Entered number $num
word=""
while [ $num -ne 0 ]
do
	rem=$((num % 10))
	if [ $rem -eq 0 ]
then
	dig="Zero"
elif [ $rem -eq 1 ]
then
	dig="One"
elif [ $rem -eq 2 ]
then
	dig="Two"
elif [ $rem -eq 3 ]
then
	 dig="Three"
elif [ $rem -eq 4 ]
then
	 dig="Four"
elif [ $rem -eq 5 ]
then
	dig="Five"	
elif [ $rem -eq 6 ]
then
	dig="Six"
elif [ $rem -eq 7 ]
then
	dig="Seven"
elif [ $rem -eq 8 ]
then
	dig="Eight"
elif [ $rem -eq 9 ]
then
	dig="Nine"
fi
	dig+=$word
	word=$dig
	num=$((num / 10))
done
echo $word