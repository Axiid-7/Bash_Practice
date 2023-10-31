#!/bin/bash
#initializing length of input string
Length_of_string=${#2}
Length_of_string=$(($Length_of_string + 4))
#check if there is nothing to print
if [[ ("$1" == "")]]; then
    echo "Invalid number of arguments"
    exit 1 
fi
#check if 2nd argument is not given just print the string
if [[ ("$4" == "")]]; then
    echo $2
    exit 1 
fi
temp=0
while [ $Length_of_string -gt $temp ]; do
    echo -n $4
    temp=$(($temp + 1))
done
echo -e "\n"$4 $2 $4
temp1=0
while [ $Length_of_string -gt $temp1 ]; do
    echo -n $4
    temp1=$(($temp1 + 1))
done
echo -e "\n"