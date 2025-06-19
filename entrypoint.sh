#!/bin/bash
mkdir -p /app/output

ffmpeg -re -i "http://125x.org:8080/bn1hevc/tracks-v1a1/mono.m3u8" \
-c copy -f hls -hls_time 4 -hls_list_size 5 -hls_flags delete_segments \
/app/output/stream.m3u8 &

cd /app && python3 -m http.server 8080
