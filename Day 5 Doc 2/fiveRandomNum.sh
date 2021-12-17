
total=0
avg=0
start=0
while [ $start -lt 5 ]
do
rnum=$(($(($RANDOM%89))+10))
total=$((total + rnum))
echo number $start is $rnum
start=$((start + 1))
done
echo sum of number is $total and avgerage is $((total/5))

