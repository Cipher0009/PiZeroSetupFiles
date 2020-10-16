#!/bin/bash
##### Prior to running make sure config is correct compare to github /boot/config.txt
##### For usbotg after flashing sdcard, ensure empty ssh is created and commandline.txt is correct prior to starting pi 
##### Immediately after startup run raspi-config, enable spi i2c ssh, and CHANGE LOGIN CREDENTIALS 
sudo apt update && sudo apt upgrade 
sudo apt install git mc htop fail2ban python3 python3-rpi.gpio python3-spidev python3-pip python3-pil python3-numpy --no-install-recommends

#install mopidy
wget -q -O - https://apt.mopidy.com/mopidy.gpg | sudo apt-key add -
sudo wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list
sudo apt update
sudo apt install mopidy

#Mopidy extensions
sudo apt install mopidy-mpd mopidy-local mopidy-soundcloud

#Mopidy Frontend
sudo pip3 install Mopidy-PiDi pidi-display-pil pidi-display-st7789 mopidy-raspberry-gpio Mopidy-Muse

###Solution, if gi error comes up in mopidy
#sudo apt install python-gobject


#git clone https://github.com/pimoroni/st7789-python.git ###commenting for now while testing mopidy, shairport, snapcast, muse system
#pip install st7789 ###commenting for now while testing mopidy, shairport, snapcast, muse system
#sudo apt update && sudo apt upgrade
#####To test screen functionality
#cd /st7789-python/examples/
#python image.py cat.jpg
