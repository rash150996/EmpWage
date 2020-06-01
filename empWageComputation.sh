#!/bin/bash -x
echo "welcome to employee wage computation"
WAGE_PER_HOURS=20
WORKING_HOURS=8
PWORKING_HOUR=4
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
   echo "present"
   dailyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
	partTimeWage=$(( $WAGE_PER_HOURS * $PWORKING_HOUR ))
   echo "If full time, daily wage would be= $dailyWage"
	echo "If part time, daily wage would be= $partTimeWage"
elif [ $isPresent -eq 0 ]
then
   echo "Absent"
fi
