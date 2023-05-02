#!/bin/bash

read -p "part timer?" type                                                          
case $type in
    'yes')                                                                 
              echo employee is a part timer
              type='part timer'
              hours=$2
              wage=12
              days=$3
              ;;                                                        
    'no')                                                                 
             echo employee is a full time worker
              type='full timer'
              hours=8
              wage=15
              days=20                       
              ;;     
esac            
# the step wise explanation would be in the flow of declaration, 
# condition, execution and incrementation/decrementation
daily=$(($hours*$wage))  
total=$(($daily*$days))                      
function for_loop(){
         for((var=1; $var<=$days; var=$(($var + 1)))); do
          echo "$type made $daily on day $var" 
          if ((var==$days)); then 
          echo "monthly demand is met. $type makes makes $total"
          fi 
          done 
} 
for_loop 
echo calculate till  
function avg(){
    sday=0
    shour=$hours
    while(($sday>=20 || $shour>=100)); do 
        echo "money made in $shour hours for $sday days is equal to $(($daily*$sday))"
        sday=$(($sday++))
        shour=$(($shour+$hours))
    done

}
avg
 # for((var1=0 && var2=$h; $var1>=20 || $var2>=10; var1=$(($var1 + 1)) && var2=$(($var2+$h)))); do  
        # echo "$t made $daily for $var days"  
        # done