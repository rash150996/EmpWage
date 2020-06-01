#!/bin/bash -x
echo "welcome to employee wage computation"
isPresent=$(( RANDOM % 2 ))
if [ $isPresent -eq 1 ]
then
   echo "Present"
else
   echo "Absent"
fi

