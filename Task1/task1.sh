#! /bin/bash

function search_file {
    temp_file=$1
    temp_folder=$2

    for f in $temp_folder/*; do
        if [ -d $f ]; then
            search_file $temp_file $f
        fi
        file_name=$(basename $f)
        if [ $file_name == $temp_file ]; then
            echo "File exists"
            echo "$temp_folder/$temp_file"
            exit 1
        fi
    done

}

search_file $1 $2
echo "File not found"
