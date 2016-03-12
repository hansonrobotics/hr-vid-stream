gst-launch-1.0 -v udpsrc port=9078 ! 'application/x-rtp,payload=96,encoding-name=H264' ! queue ! rtph264depay ! h264parse ! decodebin ! autovideosink
