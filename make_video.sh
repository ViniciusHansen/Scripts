#!/bin/bash
# made by github.com/viniciushansen
# this script takes a lot of images and a song and turns then to a tipic family video that your family members ask you to make because you're the guy who does computer science
# the images are put in alphabetical order

cat *.jpeg | ffmpeg -framerate 0.25 -f image2pipe -i - temp.mp4

ffmpeg -i temp.mp4 -i song.mp3  -c:a aac -strict experimental -pix_fmt yuv420p -shortest  video_script.mp4

rm temp.mp4
