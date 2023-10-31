#!/bin/bash

final_execute_str=""
url_with_resolution="https://picsum.photos/1920/1080"
url_without_resolution="https://picsum.photos/"
set_resolution_flag=false
function guideDetails() {
    echo "    -p to save image on specific path.
    -t to save image in /tmp.
    -o to save image with specific name.
    -r to set custom resoltion for image."
}
function is_valid_string() {
    if [[ ($1 == "") || ($1 == " ") ]]; then
        guideDetails
        exit 1
    fi
}
function set_location() {
    is_valid_string $1
    final_execute_str+=" -P "
    final_execute_str+=$1
}
function save_in_temp() {
    final_execute_str+=" -P "
    if ! [ -d ./temp ]; then
        mkdir temp
    fi
    final_execute_str+=" ./temp "
}
function set_name() {
    is_valid_string $1
    final_execute_str+=" -O "
    final_execute_str+=$1
}
function set_resolution() {
    is_valid_string $1
    set_resolution_flag=true
    resoltion_str=$(echo $1 | tr "*" "\n")
    for n in $resoltion_str; do
        resolution+=$n
        resolution+="/"
    done
    url_without_resolution+=$resolution
}
while getopts 'p:to:r:' flag; do
    case "${flag}" in
    p) set_location "${OPTARG}" ;;
    t) save_in_temp ;;
    o) set_name "${OPTARG}" ;;
    r) set_resolution "${OPTARG}" ;;
    *) guideDetails
       exit 1;;
    esac
done
if [ $set_resolution_flag = true ]; then
    final_execute_str+=" "
    final_execute_str+=$url_without_resolution
else
    final_execute_str+=" "
    final_execute_str+=$url_with_resolution
fi
wget $final_execute_str
