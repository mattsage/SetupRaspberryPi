#!/bin/bash
############################
#TO DO
############################
#edit wifi connections
#edit rc.local to run IP Script
#VLC
#Unified remote
#Static IP
#Transmission

#Change Password
echo "############################"
echo "Please enter a new password"
echo "############################"
passwd

#Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

#API Keys
mkdir /home/pi/Scripts/APIConfigs

#Clone My Github Repos
mkdir /home/pi/Scripts/
mkdir /home/pi/Scripts/github
cd /home/pi/Scripts/github
USER=mattsage;PAGE=1; curl "https://api.github.com/users/$USER/repos?page=$PAGE&per_page=100" | grep -e 'git_url*' | cut -d \" -f 4 | xargs -L1 git clone
cd

##################################
#Install Hats
#NOTE: Pimoroni Hats can be installed via Pimoroni dashboard
sudo apt-get install pimoroni
#(you will find the Dashboard under 'Accessories' too, in the Pi menu - or just run pimoroni-dashboard at the command line)
##################################

#Sense Hat
sudo apt-get install -y sense-hat
sudo pip-3.2 install -y pillow
cp /usr/src/sense-hat/examples ~/ -a

#Pibrella
sudo apt-get install -y python-pip
sudo pip install pibrella

#Unicorn Hat
curl -sS get.pimoroni.com/unicornhat | bash

#Display-o-Tron
curl get.pimoroni.com/dot3k | bash

#Blinkt!
#curl -sS get.pimoroni.com/blinkt | bash
git clone https://github.com/pimoroni/blinkt.git
cd blinkt/library
sudo python setup.py install
cd
mv blinkt Pimoroni/

#Explorer pHat - https://github.com/pimoroni/explorer-hat
curl https://get.pimoroni.com/explorerhat | bash

#Touch pHat - https://github.com/pimoroni/touch-phat
curl -sS https://get.pimoroni.com/touchphat | bash

#Rainbow Hat
curl https://get.pimoroni.com/rainbowhat | bash

#hyperpixel - https://github.com/pimoroni/hyperpixel
curl https://get.pimoroni.com/hyperpixel | bash

#MotoZero
#Nothing to Install

#DOTs Board
sudo pip install rpi_dots_minecraft

#Blink(1)
#https://github.com/todbot/blink1/wiki/Raspberry-Pi-and-blink(1)
sudo apt-get install libusb-1.0-0-dev
git clone https://github.com/todbot/blink1.git
cd blink1/commandline
sudo make
sudo ./blink1-tool --on
cd

#Codebug
sudo apt-get install -y python3-codebug-i2c-tether

#GoPro Python
pip install goprocam

##################################
#Software
##################################

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

#X-clip Command line clipboard
sudo apt-get install xclip

#Python Gui
sudo pip3 install guizero

#Fail2Ban
sudo apt-get install fail2ban

#pywu
sudo pip-3.2 install pywu

#Pushbullet
pip install git+https://github.com/Azelphur/pyPushBullet.git

#VNC Server (NOT NEEDED ANYMORE PART OF CORE BUILD)
#sudo apt-get install tightvncserver

#how2
#https://github.com/santinic/how2
sudo apt-get install nodejs npm
sudo npm install -g how2

#todo List
#https://github.com/foobuzz/todo
sudo pip-3.2 install todocli

#Scrapy
#https://github.com/scrapy/scrapy
pip install scrapy

#Blynk USB
sudo apt-get install build-essential
sudo npm install -g npm
sudo npm install -g onoff
sudo npm install -g blynk-library

#mu
sudo apt-get install mu -y

#RetroPie
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh
cd

#Pihole
curl -L https://install.pi-hole.net | bash

#Dashing

#imagemagick - Create Gifs e.g. convert -delay 10 -loop 0 image*.jpg animation.gif
sudo apt-get install imagemagick -y

#Virtual Sense-Hat
sudo apt-get install python-sense-emu python3-sense-emu python-sense-emu-doc sense-emu-tools -y

#Youtube-Dl - https://github.com/rg3/youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

#get-iplayer - https://github.com/get-iplayer/get_iplayer
sudo bash -c "cat > /etc/apt/sources.list.d/packages.hedgerows.org.uk.list <<EOF
deb http://packages.hedgerows.org.uk/raspbian wheezy/
deb-src http://packages.hedgerows.org.uk/raspbian wheezy/
EOF
"
sudo apt-get --allow-unauthenticated -y install jonhedgerows-keyring
sudo apt-get update
sudo apt-get install get-iplayer
wget https://github.com/ccrisan/motioneye/wiki/precompiled/ffmpeg_3.1.1-1_armhf.deb
sudo dpkg -i ffmpeg_3.1.1-1_armhf.deb
get_iplayer --add-prefs --ffmpeg="/usr/bin/ffmpeg"

#End script
sudo raspi-config
