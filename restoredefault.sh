#!/usr/bin/sh
#Restore the user files stored from backup on the hdd without the users settings file
wget -O /dev/null -q "http://localhost/web/message?text=WAIT WHILE USER FILES ARE RESTORED BACKUP ON HARD DRIVE&type=2&timeout=4" &&
echo '-----WAIT WHILE USER FILES ARE RESTORED BACKUP ON HARD DRIVE-----'
#files to be restored below
cp -f -v -r /media/hdd/config /etc/tuxbox
cp -v /media/hdd/inadyn.conf /etc
cp -v /media/hdd/autotimer.xml /etc/enigma2
cp -v /media/hdd/timers.xml /etc/enigma2
cp -v /media/hdd/userbouquet.favourites.tv /etc/enigma2
cp -v /media/hdd/fstab /etc
cp -v /media/hdd/interfaces /etc/network
cp -v /media/hdd/wpa_supplicant* /etc
cp -v /media/hdd/hostname /etc
echo '-----USER FILES RESTORED, WAIT FOR REBOOT-----'
wget -O /dev/null -q "http://localhost/web/message?text=USER FILES RESTORED, WAIT FOR REBOOT. IF REBOOT DOES NOT OCCUR, PLEASE REBOOT MANUALLY&type=2&timeout=30" && 
#killall -9 enigma2
opkg update && init 6
