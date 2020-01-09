# rpiBigBen
An RPi Big-Ben project. Turn a raspberry pi into a big-ben clock.

# Update RPi
sudo apt-get update
sudo apt-get upgrade

# Install mplayer
sudo apt-get install mplayer
mkdir /home/pi/big-ben
cd /home/pi/big-ben

# Use these file for 1hrs/30 mins rings
Under soundFile, 2 files downloaded from the British-Parliment.
https://www.parliament.uk/about/living-heritage/building/palace/big-ben/anniversary-year/downloads/

# Create a bash script to read the current time

Under clockScript, this script will run every 1hr and every 30 mins. 

# Finally, create a cronjob to run that script
Create this cron job to run the created clock script.
crontab -e
0,30 * * * * bash /home/pi/big-ben/clock.sh
