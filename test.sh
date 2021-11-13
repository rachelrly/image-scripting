#!/bin/bash

test_dir = "test"

rm -rf $test_dir 
cp -a test-images $test_dir
cd $test_dir
bash ../resize.sh 
cd ..

echo "Created test images in /$test_dir"
