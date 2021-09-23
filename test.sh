#!/bin/bash

# Run this file with `bash test.sh` to test the other scripts on sample images
# This idempotent test is meant to be run from the root directory

rm -rf test1 # delete test folder if already present
cp -a test-images test1
cd test1 
bash ../resize.sh $1
cd ..
echo "Created test images in /test1"
