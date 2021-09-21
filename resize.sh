#!/bin/bash
# A simple bash script that uses the sips library to convert images for web

# Run the script with a positional argument to prefix the batch resized files

echo "Naming all files with the prefix ${1}"
read -p "Do you want to use the default format options? \ To format images at 70% quality, press ENTER. \ To format at a specified quality, enter a number between 1 and 100 " formatOpt

echo "THIS IS THE VARIABLE ${formatOpt}"
if ($formatOpt = ""); then 
    formatOpt = 70
else
    regex ='^[0-9]+$'
    if ! [[ formatOpt =~ $regex ]]; then
        formatOpt = formatOpt
    else
       read -p "${format} is not a valid formatting option. To proceed with the default options, press ENTER."
       formatOpt = 70
    fi
fi

if [!formatOptions]; then 
    echo "Could not format image. Goodbye";done

for i in *.*;
    do sips -s format jpeg -s formatOptions formatOpt  "${i}" --out "${1}-${i}.jpg"
    echo "Converting ${i} to a compressed jpeg";done
