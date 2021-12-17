
read -p "Enter number" num
echo Entered number $num
word=""
while [ $num -ne 0 ]
do
	rem=$((num % 10))
case $rem in
	0)
		dig="Zero"
		;;
	1)
		dig="One"
		;;
	2)
		dig="Two"
		;;
	3)
		dig="Three"
		;;
	4)
		dig="Four"
		;;
	5)
		dig="Five"
		;;
	6)
		dig="Six"
		;;
	7)
		dig="Seven"
		;;
	8)
		dig="Eight"
		;;
	9)
		dig="Nine"
		;;
	esac
	dig+=$word
	word=$dig
	num=$((num / 10))
done
echo $word