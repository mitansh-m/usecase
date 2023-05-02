#!/bin/bash -x
                                                                 
num=$1                                                                
echo part timer?                                                            
case $num in 'yes')                                                                 
              echo employee is a part timer                                        
              echo "daily wage is $(( $2 * $3 ))"                                  
              echo "Monthly wage is $(( $2 * $3 * $4 ))"                        
              ;;                                                            
             'no')                                                                 
             echo employee is a full time worker                                        
             echo $(( $2 * $3 ))                                                                                                
             echo "Monthly wage is $(( $2 * $3 * $4 ))"                             
              ;;
esac                                              