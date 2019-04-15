# dockerfiles

A place for some handy dockerfiles.

## Youtube-dl

Based on python:3.7-alpine .

Repository with youtube-dl installed. Can run youtube-dl's file format conversions as well, for example to write subtitles into the video file using ffmpeg:

youtube-dl https://www.youtube.com/watch?v=0QRO3gKj3qw --write-sub --convert-subtitles srt -v
