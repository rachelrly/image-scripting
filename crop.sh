#!/bin/bash
# A simple bash script that uses the sips library to convert images for web


# makes two copies of original images
# one is larger for larger screens, etc
# go to this specific directory
read -p "this is a test, enter anything: " test
for i in *.jpg;
do sips --cropToHeightWidth 100 100 -s format jpeg -s formatOptions 70 "${i}" --out "${i}${test}."
echo "Converting ${i} to a compressed jpeg ${test}";done
