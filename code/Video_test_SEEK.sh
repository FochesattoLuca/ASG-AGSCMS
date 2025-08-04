#!/bin/bash
lxterminal --command="/bin/bash -c 'sudo seek_viewer --camtype=seek --rotate=180 --colormap=11 --mode=file --output=./seek.avi'"\ & sudo libcamera-vid --nopreview -t 5000 -o test.h264 &
sudo ffmpeg -i test.h264 nir.avi

