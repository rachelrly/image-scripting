#!/bin/bash
# A simple bash script that uses the sips library to convert images for web

# copy folder of images


read -p "Enter batch prefix: " prefix
for i in *.*;
    do sips -s format jpeg -s formatOptions 70 "${i}" --out "${prefix}-${i}"
    echo "Converting ${i} to a compressed jpeg";done
