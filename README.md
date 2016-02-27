# High Quality To Web Images
A bash script that converts high quality JPEG images to web images.

#Basic Use

WARNING: THIS WILL DELETE ALL ORIGINAL PHOTOS IN THE FOLDER YOU SPECIFY! COPY AND PASTE THE PHOTOS INTO THE FOLDER, DO NOT MOVE THEM INTO THE FOLDER!

Download the file you choose. Replace `HQ-to-web.sh` with the name of the file you chose. (See "Why 3 scripts?" below.)

You need to change the variable `PICTURES` to whatever folder you want and run HQ-to-web.sh

For example: `PICTURES=/home/joshua/Pictures/pics-to-convert`

Then give the script permission to run using: `sudo chmod +x HQ-to-web.sh`

Then run the script using `./HQ-to-web.sh`

You should see something like:

Resizing images in the directory to 25% of their original size.

Creating WebP images.

Encoding JPEG pictures to 80% quality.

Running the JPEG images through jpegoptim.

Done.

#Why 3 scripts?

Some people like a little more information about the images and what the script is actually doing. They can use the HQ-to-web-moreinfo.sh script. For those that want a ton of information about the images that are being converted they use the HQ-to-web-verbose.sh script.

#More Advanced Use

#License

