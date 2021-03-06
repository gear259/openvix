#!/usr/bin/sh
#Restore the user files stored from backup on the hdd WITHOUT the users settings file
wget -O /dev/null -q "http://localhost/web/message?text=WAIT WHILE USER FILES ARE RESTORED BACKUP ON HARD DRIVE&type=2&timeout=4" &&
echo '-----WAIT WHILE USER FILES ARE RESTORED BACKUP ON HARD DRIVE-----'
#files to be restored below
#cp -f -v /media/hdd/userfiles/settings /etc/enigma2
cp -f -v -r /media/hdd/userfiles/config /etc/tuxbox
cp -f -v /media/hdd/userfiles/inadyn.conf /etc
cp -f -v /media/hdd/userfiles/autotimer.xml /etc/enigma2
cp -f -v /media/hdd/userfiles/timers.xml /etc/enigma2
cp -f -v /media/hdd/userfiles/userbouquet.favourites.tv /etc/enigma2
cp -f -v /media/hdd/userfiles/fstab /etc
cp -f -v /media/hdd/userfiles/interfaces /etc/network
cp -f -v /media/hdd/userfiles/wpa_supplicant* /etc
cp -f -v /media/hdd/userfiles/hostname /etc
echo '-----USER FILES RESTORED, WAIT FOR REBOOT-----'
wget -O /dev/null -q "http://localhost/web/message?text=USER FILES RESTORED, WAIT FOR REBOOT. IF REBOOT DOES NOT OCCUR, PLEASE REBOOT MANUALLY&type=2&timeout=30" && 
#killall -9 enigma2
opkg update && init 6
