# YouTube Playlist Downloader

This repository contains scripts and instructions to download and merge high-quality audio and video from YouTube playlists using `yt-dlp` and FFmpeg.

## Requirements

- `yt-dlp`
- `FFmpeg`

## Installation

1. **Install `yt-dlp`**:
    ```bash
    pip install yt-dlp
    ```

2. **Download and Install FFmpeg**:
    - Download FFmpeg from [ffmpeg.org](https://ffmpeg.org/download.html).
    - Make sure FFmpeg is accessible from the command line by adding it to your system's path variable.

        For Windows:

            - Download FFmpeg and extract it to a folder.
            - Copy the path to the bin folder (e.g., C:\ffmpeg\bin).
            - Open the System Properties, go to the Environment Variables, and add the path to the Path variable.

        For macOS/Linux:

            - export PATH="/path/to/ffmpeg/bin:$PATH"


## Usage

1. **Download High-Quality Video and Audio Separately**:

    ```bash
    yt-dlp -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best -o "%(playlist_index)s - %(title)s.%(ext)s" -i --download-archive downloaded.txt --yes-playlist "https://www.youtube.com/playlist?list=YOUR_PLAYLIST_ID"
    ```

2. **Merge Video and Audio Files**:

    `yt-dlp` will automatically merge the best audio and video files into a single high-quality file for each video in the playlist.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
