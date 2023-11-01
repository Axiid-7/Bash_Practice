#!/bin/bash
function print_box() {
    Length_of_string=${#2}
    Length_of_string=$(($Length_of_string + 4))
    if [[ ("$1" == "") ]]; then
        echo $2
        exit 1
    fi
    if [[ ("$2" == "") ]]; then
        echo $2
        exit 1
    fi
    temp=0
    while [ $Length_of_string -gt $temp ]; do
        echo -n $1
        temp=$(($temp + 1))
    done
    echo -e "\n"$1 $2 $1
    temp1=0
    while [ $Length_of_string -gt $temp1 ]; do
        echo -n $1
        temp1=$(($temp1 + 1))
    done
    echo -e "\n"
}
str=""
char=""
while getopts 'c:s:' flag; do
    case "${flag}" in
    c) char="${OPTARG}";;
    s) str="${OPTARG}";;
    *) echo "Illegal arguments"       
        exit 1;;
    esac
done
print_box $char "$str"
