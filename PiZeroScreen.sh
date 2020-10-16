#!/bin/bash
##### Prior to running make sure config is correct compare to github /boot/config.txt
##### For usbotg after flashing sdcard, ensure empty ssh is created and commandline.txt is correct prior to starting pi 
##### Immediately after startup run raspi-config, enable spi i2c ssh, and CHANGE LOGIN CREDENTIALS 
sudo apt update && sudo apt upgrade 
sudo apt install git mc htop fail2ban python3 python3-rpi.gpio python3-spidev python3-pip python3-pil python3-numpy --no-install-recommends
git clone https://github.com/pimoroni/st7789-python.git
pip install st7789
sudo apt update && sudo apt upgrade
#####To test screen functionality
#cd /st7789-python/examples/
#python image.py cat.jpg
