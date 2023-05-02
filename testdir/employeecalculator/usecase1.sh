#! /bin/bash -x

echo Welcome to Employee Wage Computation Programme
attendance=$(($RANDOM % 2))
if (($attendance==0)); then 
attendance='present'
else 
attendance='absent'
fi 

echo $attendance

#echo Welcome to Employee Wage Computation Programme
#attendance=$(($RANDOM % 3))
#if (($attendance==0)); then 
#attendance='absent'
#elif (($attendance==1)); then 
#attendance='part timer'
#else 
#attendance='full timer'
#fi 
