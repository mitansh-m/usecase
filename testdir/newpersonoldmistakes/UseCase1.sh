#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program" 
Emp=$(($RANDOM % 3 ))
echo $Emp
if 
(($Emp==0)) 
 then  echo 'employee is present'
elif 
(($Emp==1))
 then  echo 'employee is absent'
elif 
(($Emp==2))
then echo 'superposition'
fi 