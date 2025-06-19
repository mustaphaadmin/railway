#!/bin/bash
mkdir -p /app/output

ffmpeg -re -i "http://iboeag.cdn-dtv.com/live/u5965466rtdy/byv3ayhv9q/1390827.m3u8" \
-c copy -f hls -hls_time 4 -hls_list_size 5 -hls_flags delete_segments \
/app/output/stream.m3u8 &

cd /app && python3 -m http.server 8080
