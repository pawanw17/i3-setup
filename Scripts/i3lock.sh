#!/bin/bash

icon="$HOME/Scripts/lock_icon.png"
#img="$HOME/.cache/i3lock.png"
img="$HOME/Scripts/cache/back.png"

scrot $img
BLURTYPE="2x3"
#convert $img -filter Gaussian -thumbnail 20% -sample 500%
#-scale 10% -scale 1000%
#$img
convert $img -resize 50% $img
convert $img -blur $BLURTYPE $img
convert $img -resize 200% $img
convert $img -set colorspace Gray -separate -average $img
convert $img $icon -gravity center -composite $img

i3lock -i $img
#rm $img
