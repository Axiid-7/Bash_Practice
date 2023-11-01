#! /bin/bash

file_exsits=false
function search_file {
    temp_fi=$1
    temp_fo=$2
    for f in $temp_fo/*; do
        if [ -d $f ]; then
            search_file $temp_fi $f
        fi
        file_name=$(basename $f)
        if [ $file_name == $temp_fi ]; then
            if [ $file_exsits = false ]; then
                echo "File exists"
            fi
            echo "$temp_fo/$temp_fi"
            file_exsits=true
        fi
    done

}

search_file $1 $2
if [ $file_exsits = false ]; then
    echo "File not found"
fi
