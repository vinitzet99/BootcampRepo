#Reverse a number using function 
reverseNum(){
echo "function Start"
input=$1
sum=0
while [ $input -ne 0 ]
do
	r=$((input%10))
	sum=$((sum*10))
	sum=$((sum+r))
	input=$((input/10))
done
echo "Reverse is "$sum
echo "Function End"
}
read -p "Enter a number: " input
reverseNum $input



