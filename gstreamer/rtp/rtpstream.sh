#!/bin/bash
gst-launch-1.0 -v -e uvch264src device=/dev/video1 name=src auto-start=true \
  src.vfsrc ! queue ! video/x-raw,format=\(string\)YUY2,width=320,height=240,framerate=10/1 ! xvimagesink sync=false \
   src.vidsrc ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! rtph264pay ! udpsink host=127.0.0.1 port=9078
#   src.vidsrc ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! rtph264pay ! udpsink host=127.0.0.1 port=9078
#   src.vidsrc ! queue ! video/x-h264,width=1280,height=720,framerate=30/1 ! h264parse ! avdec_h264 ! xvimagesink sync=false 
#  src.vidsrc ! tcpserversink host=127.0.0.1 port=43000
#  src.vfsrc ! queue ! 'video/x-raw,width=320,height=240' ! fakesink \
