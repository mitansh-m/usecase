#! /bin/bash

days_of_work=20
wage=10

function dailywagecalc(){
        attendance=$(($RANDOM % 3))
        case $attendance in  
                0)
                hours=8
                ;;
                1) 
                hours=4
                ;;
                *)
                hours=0
                ;;
        esac
        dwage=$(($wage*$hours))        
}

day=0 
hour=0
while (($hour<=100 && $day<=20)); do 
        dailywagecalc
        day=$(($day+1))
        hour=$(($hour + $hours))
        totalwage=$(($totalwage+$dwage))
done 
echo $totalwage