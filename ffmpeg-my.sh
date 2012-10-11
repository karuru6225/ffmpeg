#!/bin/bash

ffmpeg -y -i "$1" -vcodec libx264 -s 1280x720 -r 30000/1001 -g 30 -vprofile high -acodec libfaac -ar 48000 -ab 192k -threads 4 -fpre ~/.ffmpeg/my-preset.ffpreset "$2"
