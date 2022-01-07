#!/bin/bash

resolution='1920x1080'

for f in ./*.jpeg
do convert -size $resolution xc:skyblue "$f" -blur 0x25 -geometry $resolution -gravity northwest -composite "$f" -geometry $resolution -blur 0x25 -gravity southeast -composite "$f" -geometry $resolution -gravity center -composite "$f"
done
exit
