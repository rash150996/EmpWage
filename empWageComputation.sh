#!/bin/bash -x
echo "welcome to employee wage computation"
WAGE_PER_HOURS=20
WORKING_HOURS=8
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
   echo "present"
   dailyWage=$(( $WAGE_PER_HOURS * $WORKING_HOURS ))
   echo "$dailyWage"
elif [ $isPresent -eq 0 ]
then
   echo "Absent"
fi
