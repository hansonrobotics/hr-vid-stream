#!/bin/bash
#Copyright (c) 2013-2018 Hanson Robotics, Ltd.
cvlc --sout '#standard{access=http,mux=ts,dst=localhost:8080,name=stream,mime=video/ts}'  'v4l2:///dev/video1' 

