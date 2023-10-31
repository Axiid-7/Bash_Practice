#!/bin/bash
length_of_string=${#1}
length_of_string=$(($length_of_string + 4))
temp=0
if [[ ("$1" == "")]]; then
    echo "Invalid number of arguments"
    exit 1 
fi
while [ $length_of_string -gt $temp ]; do
    echo -n "*"
    temp=$(($temp + 1))
done
echo -e "\n*" $1 "*"
temp1=0
while [ $length_of_string -gt $temp1 ]; do
    echo -n "*"
    temp1=$(($temp1 + 1))
done
echo -e "\n"