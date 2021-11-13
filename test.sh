#!/bin/bash

CYAN='\033[0;36m'
RED='\033[1;31m'
NC='\033[0m' # no color

test_dir="test"

rm -rf $test_dir 
cp -a test-images $test_dir
cd $test_dir
bash ../resize.sh 
cd ..


echo -e "\n $CYAN Created test images in /$test_dir $NC"
ls -l $test_dir
