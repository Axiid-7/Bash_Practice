#! /bin/bash

function search_file {
    temp_fi=$1
    temp_fo=$2

    for f in $temp_fo/*; do
        if [ -d $f ]; then
            search_file $temp_fi $f
        fi
        file_name=$(basename $f)
        if [ $file_name == $temp_fi ]; then
            echo "File exists"
            echo "$temp_fo/$temp_fi"
            exit 1
        fi
    done

}

search_file $1 $2
echo "File not found"
