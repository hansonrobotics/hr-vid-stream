#!/bin/bash
#Copyright (c) 2013-2018 Hanson Robotics, Ltd.
gst-launch-1.0 -v -e uvch264src device=/dev/video1 name=src auto-start=true \
   src.vfsrc ! queue ! video/x-raw,format=\(string\)YUY2,width=320,height=240,framerate=10/1 ! xvimagesink sync=false \
   src.vidsrc ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! h264parse ! avdec_h264 ! xvimagesink sync=false 
