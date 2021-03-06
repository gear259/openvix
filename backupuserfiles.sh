#!/usr/bin/sh
#Backup the user files stored from system to the hdd
wget -O /dev/null -q "http://localhost/web/message?text=Please wait while userfiles are backed up to drive&type=2&timeout=10"
echo '-----WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE-----'
mkdir -p /media/hdd/userfiles
cd media/hdd/userfiles
cp -f -v /etc/inadyn.conf /media/hdd/userfiles
cp -f -v -r /etc/tuxbox/config /media/hdd/userfiles
cp -f -v /etc/emigma2/settings /media/hdd/userfiles
cp -f -v /etc/enigma2/autotimer.xml /media/hdd/userfiles
cp -f -v /etc/enigma2/timers.xml /media/hdd/userfiles
cp -f -v /etc/enigma2/userbouquet.favourites.tv /media/hdd/userfiles
cp -f -v /etc/fstab /media/hdd/userfiles
cp -f -v /etc/network/interfaces /media/hdd/userfiles
cp -f -v /etc/wpa_supplicant* /media/hdd/userfiles
cp -f -v /etc/hostname /media/hdd/userfiles
wget -O /dev/null -q "http://localhost/web/message?text=USER FILES BACKED UP, SAFE TO RUN UPDATE NEXT&type=2&timeout=10"
exit
