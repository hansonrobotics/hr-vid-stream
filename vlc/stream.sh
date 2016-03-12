#!/bin/bash
cvlc --http-host=127.0.0.1 --sout=#http{dst=:8080/stream.mp4} 'v4l2:///dev/video1:chroma=H264:width=800:height=600:fps=30'
