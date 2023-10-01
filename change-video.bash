#!/bin/bash
oldURL=$(<video-url.txt)
 
if [ -z "$oldURL" ]; then
    oldURL="[N/A]"
fi
 
# Check if "video.webm" file exists and delete it if it does
if [ -e "video.webm" ]; then
    echo "Previous Video: $oldURL"
    echo -n "Do you want to play the previously downloaded video? [Y/N]: "
    read play
    if [ "$play" == "Y" ] || [ "$play" == "y" ]; then
        godot -d --xr-mode off
        exit 0
    fi
    echo "Deleting previous video"
    rm "video.webm"
fi
 
# Prompt user for video URL
clear
echo "Previous Video: $oldURL"
echo -n "Enter video URL: "
read url
echo "$url" > video-url.txt
 
# Download the video using yt-dlp
yt-dlp -o "video.webm" -f "(mp4 [height<=720])" "$url"
 
# Check if "video.ogv" file exists and delete it if it does
if [ -e "video.ogv" ]; then
    echo "Deleting previous converted video"
    rm "video.ogv"
fi
 
# Convert video using ffmpeg
ffmpeg -i "video.webm" -q:v 6 -q:a 6 "video.ogv"
echo "$url" > video-url.txt
 
# Run Godot
godot -d --xr-mode off
