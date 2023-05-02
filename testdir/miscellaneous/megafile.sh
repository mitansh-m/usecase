#!/bin/bash 

function action(){
    read -p "Type of employment? " type_of_employee 

    case $type_of_employee in
        'part time')
            echo employee is a part timer
            type_of_employee='part timer'
            read -p "working hours? " hours
            read -p "wage? " wage
            read -p "working days? " days
            ;;                                                        
        'full time')                                                                 
            echo employee is a full time worker
            type_of_employee='full timer'
            hours=8
            wage=15
            read -p "working days? " days                      
            ;;
        *) 
                 
    esac   

    echo $type works for $hours hours for $days days at the wage of $wage

    sday=0
    shour=$hours
    while (($shour<=100 && $sday<=20)) do
        if (($sday>=20 || $shour>=100)); then
            echo "money made in $shour hours for $sday days is equal to $(($wage*$sday*$hours))"
        else  
            sday=$(($sday+1))
            shour=$(($shour+$hours))
        fi
    done
    local hour=$(($days*$hours))
    if [ $sday -gt $days ]; then
        echo "employee needs to work for $(($shour-$hour)) hours more to fulfill minimum criteria" 
    else
        echo criteria fulfilled,
        echo "money made in $shour hours for $sday days is equal to $(($wage*$sday*$hours))"
    fi
}

echo "Welcome to Employee Wage Computation Program"
Emp=$(($RANDOM % 2))
echo $Emp
if (($Emp==1)) then 
    echo 'employee is present'
    action
elif (($Emp==0)) then  
    echo 'employee is absent'
fi 