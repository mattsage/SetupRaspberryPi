#!/bin/bash
############################
#TO DO
############################
#edit wifi connections
#Copy my scripts across
#edit rc.local to run IP Script
#Raspberry Pi Camera
#VLC
#Unified remote
#Static IP
#YouTube Workshop Scripts
#Transmission

#Change Password
echo "############################"
echo "Please enter a new password"
echo "############################"
passwd

#Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
sudo dist-upgrade -y

#Pibrella
sudo apt-get install -y python-pip
sudo pip install pibrella

#Sense Hat
sudo apt-get install -y sense-hat
sudo pip-3.2 install -y pillow
cp /usr/src/sense-hat/examples ~/ -a

#Unicorn Hat
curl -sS get.pimoroni.com/unicornhat | bash

#Display-o-Tron
curl get.pimoroni.com/dot3k | bash

#GPIO Zero
sudo apt-get install -y python3-gpiozero

#Arduino
sudo apt-get install -y arduino

#GParted
sudo apt-get install -y gparted

#Autopsy and Sleuthkit
sudo apt-get install -y sleuthkit
sudo apt-get install -y autopsy

#Pushbullet
pip install git+https://github.com/Azelphur/pyPushBullet.git

#Uptimed (Uprecords)
sudo apt-get install -y uptimed

#Codebug
sudo apt-get install -y python3-codebug-i2c-tether

#DOTs Board
sudo pip install rpi_dots_minecraft

#Fail2Ban
sudo apt-get install fail2ban

#Blynk
sudo apt-get install build-essential
sudo npm install -g npm
sudo npm install -g onoff
sudo npm install -g blynk-library

#pywu
sudo pip-3.2 install pywu

#Pushbullet
pip install git+https://github.com/Azelphur/pyPushBullet.git

#VNC Server
sudo apt-get install tightvncserver

#how2
#https://github.com/santinic/how2
sudo apt-get install nodejs npm
sudo npm install -g how2

#todo List
#https://github.com/foobuzz/todo

sudo pip-3.2 install todocli

#Scrapy?

#End script
sudo raspi-config
