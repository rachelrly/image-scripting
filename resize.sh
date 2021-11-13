#!/bin/bash

function resize {
    BLUE='\033[1;34m'
    CYAN='\033[0;36m'
    RED='\033[1;31m'
    NC='\033[0m' # no color

    img_file=$1
    img=${img_file##*/}

    ext="${img##*.}"
    name="${img%.*}"

    echo -e "\n $BLUE Converting $img from $ext to compressed jpeg... $NC"

    longestSide=500
    quality=high

    new_img="$name.jpg"

    sips -s format jpeg -s formatOptions $quality -Z $longestSide "$img" --out $new_img

    if test -f $new_img; then 
        echo -e "\n $CYAN Successfully converted from $img to $new_img $NC"  
        ls -l $new_img
    else 
        echo -e "$RED Conversion of $img failed $NC"
    fi
}

for i in *.*;
    do resize $i;done