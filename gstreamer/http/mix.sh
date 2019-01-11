#!/bin/bash
#Copyright (c) 2013-2018 Hanson Robotics, Ltd.
#gst-launch-1.0 -vv tcpclientsrc port=43000 host=127.0.0.1 ! h264parse ! avdec_h264 ! xvimagesink sync=false
gst-launch-1.0 -vv tcpclientsrc port=8554 host=192.168.1.50 \
    ! video/x-h264,width=1280,height=720,framerate=30/1 \
    ! h264parse \
    ! avdec_h264 \
    ! videocrop left=300 top=100 \
    ! videoscale \
    ! video/x-raw,width=1280 \
    ! videomixer name=mix \
        ! videoconvert \
        ! xvimagesink sync=false \
        tcpclientsrc port=8554 host=192.168.1.51 \
        ! video/x-h264,width=1280,height=720,framerate=30/1 \
        ! h264parse \
        ! avdec_h264 \
        ! videocrop top=100 bottom=100 left=400 right=400 \
        ! videoscale \
        ! video/x-raw,width=400 \
        ! mix.
