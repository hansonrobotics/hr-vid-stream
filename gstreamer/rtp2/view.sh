#!/bin/bash
#Copyright (c) 2013-2018 Hanson Robotics, Ltd.
#gst-launch-1.0 -vv tcpclientsrc port=43000 host=127.0.0.1 ! h264parse ! avdec_h264 ! xvimagesink sync=false
gst-launch-1.0 -vv tcpclientsrc port=8554 host=127.0.0.1 \
    ! video/x-h264,width=1280,height=720,framerate=30/1 !  h264parse ! avdec_h264 ! xvimagesink sync=false
