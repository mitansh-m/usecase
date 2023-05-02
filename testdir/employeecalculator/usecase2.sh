#! /bin/bash -x

attendance=$(($RANDOM % 3))
case $attendance in  
        0)
        attendance='full time'
        hours=8
        ;;
        1) 
        attendance='part time'
        hours=4
        ;;
        *)
        attendance='absent'
        hours=0
        ;;
esac
readonly wage=10
dwage=$(($wage*$hours))
echo $dwage