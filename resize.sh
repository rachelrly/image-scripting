#!/bin/bash
# A simple bash script that uses the sips library to convert images for web



# makes two copies of original images
# one is larger for larger screens, etc
# go to this specific directory
#read -p "Enter batch prefix: " prefix
if [${#} -tt prefix]
    echo "Testing, testing ${prefix}"
fi

for i in *.[jpg|png];
do sips -s format jpeg -s formatOptions 70 "${i}" --out "${prefix}-${i}."
echo "Converting ${i} to a compressed jpeg";done

# if [ ${#} -ne 3 ]
# then
#   echo "Image conversion script using Apple Image Events."
#   echo ""
#   echo "    Usage: ${0} [DIR] [file ext] [jpeg2|tiff|jpeg|pict|bmp|psd|png]"
#   echo ""
#   exit;
# fi
# if [ "${1}" != "-convert" ]
# then
#   echo ""
#   echo "starting in: $1"
#   echo "getting all the $2 files to convert to $3"
#   find $1 -name "*.$2" -exec ./$0 -convert {} $3 ;
#   exit 1
# fi

# jpg_file="$2"
# pict_file="${2%%.*}.${3}"

# if [ -e "${pict_file}" ]
# then
#   rm $pict_file
#   echo "deleted old pict"
# fi

# echo "converting ${jpg_file} to ${pict_file}"
# osascript