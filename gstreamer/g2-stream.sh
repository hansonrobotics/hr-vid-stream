#!/bin/bash
gst-launch-1.0 -v -e uvch264src device=/dev/video1 name=src mode=2 auto-start=true src.vfsrc ! queue ! 'video/x-raw-yuv,width=320,height=240' ! fakesink . src.vidsrc ! queue ! 'video/x-h264,width=1280,height=720' ! rtph264pay ! udpsink host=127.0.0.1 port=9078
