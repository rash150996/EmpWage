#!/bin/bash -x
echo "welcome to employee wage computation"
WAGE_PER_HOURS=20
WORKING_HOURS=8
PWORKING_HOUR=4
IsFullTime=1
IsPartTime=0
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
	echo "the employee is present"
	work=$(( RANDOM % 2 ))
	case $work in
			$IsFullTime)
				echo "The employee is a full time employee"
				dailyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
				echo "Daily wage = $dailyWage"
				;;
         $IsPartTime)
            echo "The employee is a part time employee"
            pdailyWage=$(( $WAGE_PER_HOURS * $PWORKING_HOUR ))
            echo "Daily wage = $pdailyWage"
				;;
			*)
				echo "error"
				;;
	esac
elif [ $isPresent -eq 0 ]
then
   echo "Absent"
fi
