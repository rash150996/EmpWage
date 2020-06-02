#!/bin/bash -x
echo "welcome to employee wage computation"
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

# VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;
totalsalary=0
dailywage=0


function getWorkHrs()
{
local empCheck=$1
case $empCheck in
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

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
((totalWorkingDays++))
empCheck=$(($RANDOM%3));
empHrs=$( getWorkHrs $empCheck )
totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
dailyWage[$totalWorkingDays]=$(( $empHrs*$EMP_RATE_PER_HR ))
totalsalary=$(( $totalsalary + $(( $empHrs*$EMP_RATE_PER_HR ))))
totalSalary[$totalWorkingDays]=$(( $totalsalary ))
done

echo ${dailyWage[@]}
echo ${totalSalary[@]}
for (( i=1; i<= ${#dailyWage[@]}; i++ ))
do
	echo "Day"$i			${dailyWage[$i]}			${totalSalary[$i]} 
done | column -t

