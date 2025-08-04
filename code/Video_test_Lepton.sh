#!/bin/bash
TIME_MINS=$1
LEPTON_ARG=$((TIME_MINS*60*9))
NIRCAM_ARG= $((TIME_MINS*60*1000))


lxterminal --command="/bin/bash -c 'rpi_vsync_app && lepton_data_collector -3 -c $LEPTON_ARG -o ./FLIRcapture/frame_ '"\ & sudo libcamera-vid --nopreview -t $NIRCAM_ARG -o test.h264 &
sudo ffmpeg -i test.h264 nir.avi

