#!/usr/bin/sh
#Backup the user files stored from system to the hdd
echo '-----WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE-----' &&
cp -f -v /etc/inadyn.conf /media/hdd & cp -f -v -r /etc/tuxbox/config /media/hdd & cp -f -v /etc/enigma2/autotimer.xml /media/hdd & cp -f -v /etc/enigma2/timers.xml /media/hdd & cp -f -v /etc/enigma2/userbouquet.favourites.tv /media/hdd & cp -f -v /etc/fstab /media/hdd && cp -f -v /etc/network/interfaces /media/hdd & cp -f -v /etc/wpa_supplicant* /media/hdd & cp -f -v /etc/hostname /media/hdd &&
wget -O /dev/null -q "http://localhost/web/message?text=USER FILES BACKED UP, SAFE TO RUN UPDATE NEXT&type=2&timeout=10"
