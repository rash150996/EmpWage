#!/bin/bash -x
echo "welcome to employee wage computation"
WAGE_PER_HOURS=20
WORKING_HOURS=8
PWORKING_HOUR=4
NUM_WORKING_MONTH=20
IsFullTime=1
IsPartTime=0
MAX_HRS_IN_MONTH=100
NUM_WORKING_DAYS=20

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	(( totalWorkingDays++ ))
	isPresent=$(( RANDOM % 2 ))
	if [ $isPresent -eq 1 ]
	then
		echo "the employee is present"
		work=$(( RANDOM % 2 ))
		case $work in
			$IsFullTime)
				echo "The employee is a full time employee"
				empHrs=8
				totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
				;;

         $IsPartTime)
            echo "The employee is a part time employee"
				empHrs=4
				totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
				;;
			*)
				echo "error"
				;;
		esac
	elif [ $isPresent -eq 0 ]
	then
   	echo "Absent"
	fi
done
totalSalary=$(($totalEmpHrs*$WAGE_PER_HOURS))

