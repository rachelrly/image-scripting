# Image Conversion Scripting with Sips

This repository contains my go-to image conversion scripts to resize images for my websites with the MacOS library, sips.

It is meant to take large, oversized screenshots and turns them into web-appropriate files.

Read my Medium post about sips [here](https://rachelrly.medium.com/how-to-compress-images-in-the-mac-terminal-57f8ddd11926).

## tl;dr

`sips -s format jpeg -s formatOptions high -Z 500 "$img" --out $new_img`

## Codebase

### resize.sh

This is the main script that batch converts and resizes `jpg`, `png`, and `gif` files.

The files are currently being converted to 500px jpegs, but support for formatting options will be added.

### test.sh

This is an idempotent test that runs `resize.sh` after copying the sample images. This is meant to be run from the root dir.

### /test-images

This folder contains test images
