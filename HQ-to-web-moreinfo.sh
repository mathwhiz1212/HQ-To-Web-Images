#!/bin/bash
#Copyright 2016 Joshua Mudge

#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.


#This script creates web images from high quality JPEG images. Feel free to tweak as you wish.

#Requires: imagemagick, cwebp and jpegoptim.
#On most debian based distros you can install using: sudo apt-get install imagemagick webp jpegoptim

#Replace with proper directory.
#You can also replace the following line of code with: 'read -p "Enter path:" VIDEOS' (Don't include the single quotes.) if you want the script to ask you for a directory so you won't have to edit this file if you want to change the directory. (Not as safe.)

PICTURES=~/Desktop/images-to-convert

#Resizes all JPEG pictures in the directory to 25% of their size.

find "$PICTURES" -name '*.jpg' -exec sh -c 'convert -resize 25% "$0" "${0%%.jpg}.jpg"' {} \;

#Same as above but with the .jpeg file extension instead of the .jpg file extension. This does nothing if they are all in the .jpg file extension.

find "$PICTURES" -name '*.jpeg' -exec sh -c 'convert -resize 25% "$0" "${0%%.jpeg}.jpeg"' {} \;

#Converts all JPEG pictures in the directory to WebP pictures at 75% quality. My test seem to indicate WebP images at 75% quality are ≈ JPEG images at 80% quality.

find "$PICTURES" -name '*.jpg' -exec sh -c 'cwebp -mt -q 75 -m 6 "$0" -o "${0%%.jpg}.webp"' {} \;

#Same as above but with the .jpeg file extension instead of the .jpg file extension. This does nothing if they are all in the .jpg file extension.

find "$PICTURES" -name '*.jpeg' -exec sh -c 'cwebp -mt -q 75 -m 6 "$0" -o "${0%%.jpeg}.webp"' {} \;

#Takes all JPEG pictures in the directory and encodes them at 80% quality.

find "$PICTURES" -name '*.jpg' -exec sh -c 'convert -quality 80 "$0" "${0%%.jpg}.jpg"' {} \;

#Same as above but with the .jpeg file extension instead of the .jpg file extension. This does nothing if they are all in the .jpg file extension.

find "$PICTURES" -name '*.jpeg' -exec sh -c 'convert -quality 80 "$0" "${0%%.jpeg}.jpeg"' {} \;

#Takes all JPEG images in the directory and strips all metadata, adds progressive mode (if needed) and "optimizes" them with jpegoptim's lossless optimization.

find "$PICTURES" -name '*.jpg' -exec sh -c 'jpegoptim --strip-all --all-progressive "$0" "${0%%.jpg}.jpg"' {} \;

#Same as above but with the .jpeg file extension instead of the .jpg file extension. This does nothing if they are all in the .jpg file extension.

find "$PICTURES" -name '*.jpeg' -exec sh -c 'jpegoptim --strip-all --all-progressive "$0" "${0%%.jpeg}.jpeg"' {} \;

exit;
