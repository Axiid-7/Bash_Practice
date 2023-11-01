#!/bin/bash
if [[ ("$1" == "") ]]; then
    echo "Invalid number of arguments"
    exit 1
fi
length_of_string=0
length_of_spaces=0
for i in $@; do
    length_of_spaces=$(($length_of_spaces + 1))
    length_of_string=$(($length_of_string + ${#i}))
done
length_of_spaces=$(($length_of_spaces - 1))
length_of_string=$(($length_of_string + $length_of_spaces))
length_of_string=$(($length_of_string + 2))
echo $length_of_string
temp=0
while [ $length_of_string -gt $temp ]; do
    echo -n "*"
    temp=$(($temp + 1))
done
echo -e -n "\n*"
for i in $@; do
    echo -n $i
    if [ $length_of_spaces -gt 0 ]; then
         echo -n " "
         length_of_spaces=$(($length_of_spaces - 1))
    fi
done
echo "*"
temp1=0
while [ $length_of_string -gt $temp1 ]; do
    echo -n "*"
    temp1=$(($temp1 + 1))
done
echo -e "\n"
