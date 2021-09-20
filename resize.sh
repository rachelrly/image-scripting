#!/bin/bash
# A simple bash script that uses the sips library to convert images for web

# copy folder of images

echo "Naming all files with the prefix ${1}"
for i in *.*;
    do sips -s format jpeg -s formatOptions 70 "${i}" --out "${1}-${i}.jpg"
    echo "Converting ${i} to a compressed jpeg";done
