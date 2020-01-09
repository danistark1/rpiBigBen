# rpiBigBen
An RPi Big-Ben project


# Update RPi
sudo apt-get update
sudo apt-get upgrade

# Install mplayer
sudo apt-get install mplayer
mkdir /home/pi/big-ben
cd /home/pi/big-ben

# Use these file for 1hrs/30 mins rings
wget https://www.instructables.com/files/orig/F3C/WOPJ/INC0CAI4/F3CWOPJINC0CAI4.mp3
wget https://www.instructables.com/files/orig/FOP/GM68/INC0CAI9/FOPGM68INC0CAI9.mp3

# Create a bash script to read the current time
nano clock.sh
'#!/bin/bash
'# Triggered through Crontab every 30 minutes
minute=$(date +"%M")
if [[ $minute == 30 ]]
then
mplayer "/home/pi/big-ben/FOPGM68INC0CAI9.mp3"
elif [[ $minute == 00 ]]
then
mplayer "/home/pi/big-ben/F3CWOPJINC0CAI4.mp3"
hour=$(date +"%I")
x=0
while [ $x -lt $hour ]
do
mplayer "/home/pi/big-ben/FOPGM68INC0CAI9.mp3"
let x=x+1
done
fi

# Finally, create a cronjob to run that script
crontab -e
0,30 * * * * bash /home/pi/big-ben/clock.sh
