#!/bin/bash 

Emp=$(("read state of presence : '0' is absence , '1' is presence"))
echo $Emp
if 
(($Emp==1)) 
 then   echo 'employee is present'
        echo wage per hour 
        w=$1 
        echo $w
    echo hours worked 
h=$2
echo $h
t=$(($w*$h))
echo $t
echo user makes $t today 
elif 
(($Emp=0))
 then  echo 'employee is absent'
fi 

echo wage per hour 
w=$1 
echo $w
echo hours worked 
h=$2
echo $h
t=$(($w*$h))
echo $t
echo user makes $t today 