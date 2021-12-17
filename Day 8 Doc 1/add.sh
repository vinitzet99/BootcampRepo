
#CONSTANTS VARIABLES
IS_FULL_TIME=1;
IS_PART_TIME=2;
EMP_RATE_PER_HRS=20;
MAX_WORKING_DAY_IN_MONTH=20;

#VARIABLES
totalWorkingDays=0;

declare -A empWages

function getWorkingHrs()
{
   case $1 in
      $IS_FULL_TIME)
         empHrs=8
         ;;
      $IS_PART_TIME)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac

   echo $empHrs
}
while [ $totalWorkingDays -lt $MAX_WORKING_DAY_IN_MONTH ]
do

   ((totalWorkingDays++));
   string1="Day"
   string2="$totalWorkingDays";
   string1+=$string2;
   #echo "$\n string1 value: "$string1
   empHrs=$( getWorkingHrs $((RANDOM%3)) );
   dayByDaySalary=$(($empHrs*$EMP_RATE_PER_HRS));
   empWages[$string1]=$dayByDaySalary;
   #empWages["Day"$totalWorkingDays]=$dayByDaySalary;
   #echo "key value pair at $string1: "${empWages[$string1]}
   totalEmpHrs=$((totalEmpHrs+empHrs));
done
echo "${empWages[@]}"
echo "${!empWages[@]}"
echo "${empWages["Day1"]}"