#!/bin/bash
# Triggered through Crontab every 30 minutes
minute=$(date +"%M")
if [[ $minute == 30 ]]
then
mplayer "/home/pi/big-ben/FOPGM68INC0CAI9.mp3"
elif [[ $minute == 00 ]]
then
mplayer "/home/pi/big-ben/hourlychimebeg.mp3"
hour=$(date +"%I")
x=0
while [ $x -lt $hour ]
do
mplayer "/home/pi/big-ben/bigbenstrikes.mp3"
let x=x+1
done
fi