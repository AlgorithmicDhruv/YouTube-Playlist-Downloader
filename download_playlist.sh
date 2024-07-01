#!/bin/bash

# Ensure you have yt-dlp and FFmpeg installed on your system
# Install yt-dlp: pip install yt-dlp
# Download and install FFmpeg from https://ffmpeg.org/download.html

PLAYLIST_URL=$1

yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best -o "%(playlist_index)s - %(title)s.%(ext)s" -i --download-archive downloaded.txt --yes-playlist "$PLAYLIST_URL"
