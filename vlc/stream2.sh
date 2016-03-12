#!/bin/sh
cvlc v4l2:///dev/video1:chroma=h264:width=800:height=600 --sout '#standard{access=http,mux=ts,dst=localhost:8080/stream.mp4,name=stream,mime=video/ts}' -vvv
