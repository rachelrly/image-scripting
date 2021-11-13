#!/bin/bash

function resize {
    img_file=$1
    img=${img_file##*/}

    ext="${img##*.}"
    name="${img%.*}"

    echo "Converting $img from $ext to compressed jpeg"

    longestSide=500
    quality=high

    new_img="$name.jpg"

    sips -s format jpeg -s formatOptions $quality -Z $longestSide "$img" --out $new_img

    if test -f $new_img; then 
        echo "Successfully converted from $img to $new_img"  
        ls -l $new_img
    else 
        echo "Conversion of $img failed"
    fi
}

for i in *.*;
    do resize $i;done