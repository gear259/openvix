!/usr/bin/sh
######################################           script version             ##########################################
######################################        zero generic upgrade.sh       ##########################################
#wget -O /dev/null -q "http://localhost/web/message?text=WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE&type=2&timeout=120" &
#cp -f -v /etc/inadyn.conf /media/hdd & cp -f -v -r /etc/tuxbox/config /media/hdd & cp -f -v /etc/enigma2/autotimer.xml /media/hdd & cp -f -v /etc/enigma2/timers.xml /media/hdd & cp -f -v /etc/enigma2/#userbouquet.favourites.tv /media/hdd & cp -f -v /etc/fstab /media/hdd && cp -f -v /etc/network/interfaces /media/hdd & cp -f -v /etc/wpa_supplicant* /media/hdd & cp -f -v /etc/hostname /media/hdd &&
#wget -O /dev/null -q "http://localhost/web/message?text=USER FILES BACKED UP, SAFE TO RUN UPDATE NEXT&type=2&timeout=3" &&
#
#wget -O /dev/null -q "http://localhost/web/message?text=YOUR FIRMWARE UPDATE DOWNLOADING TO DISK. DEPENDING ON INTERNET SPEED THIS CAN TAKE SOME TIME, PLEASE BE PATIENT&type=2&timeout=120" &
#cd /media/hdd/imagebackups && wget --output-document=se-latest.zip https://www.dropbox.com/s/8d33els5bxwcgic/se-latest*.zip?dl=0 && wget -O /dev/null -q http://localhost/web/remotecontrol?command=352 &&
#wget -O /dev/null -q "http://localhost/web/message?text=Firmware update is now stored on your hard drive and ready for updating! Go to Menu>Vix>Image Manager, and select the Latest to flash. Once rebooted, go #back to VIX SCRIPTS to restore user files. NOW PRESS OK&type=2&timeout=120"

#cp -f -v /etc/inadyn.conf /media/hdd #&& 
#cp -f -v -r /etc/tuxbox/config #/media/hdd #&& 
#cp -f -v /etc/enigma2/autotimer.xml #/media/hdd && 
#cp -f -v /etc/enigma2/timers.xml #/media/hdd && 
#cp -f -v /etc/enigma2/userbouquet.favourites.tv #/media/hdd &&
#cp -f -v /etc/fstab #/media/hdd && 
#cp -f -v /etc/network/interfaces #/media/hdd && 
#cp -f -v /etc/wpa_supplicant* #/media/hdd && 
#cp -f -v /etc/hostname #/media/hdd &&

wget -O /dev/null -q "http://localhost/web/message?text=WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE&type=2&timeout=2" & 
cd /etc/ &&
cp -f -v inadyn.conf host* wpa_supplicant* fstab /media/hdd && 
cd /etc/enigma2/ &&
cp -f -v -r /etc/tuxbox/config /media/hdd & 
cp -f -v autotimer.xml timers.xml userbouquet.favourites.tv /media/hdd & 
cp -f -v /etc/network/interfaces /media/hdd &
rm -r /media/hdd/imagebackups/latest* &

# 6. Clear screen
wget -O /dev/null -q http://localhost/web/remotecontrol?command=352 #&&

# 7. Display files
#ls -a /media/hdd/ && 
wget -O /dev/null -q "http://localhost/web/message?text=USER FILES SAVED FOR RESTORE AFTER UPDATE&type=2&timeout=3" wget -O /dev/null -q "http://localhost/web/message?text=LATEST FIRMWARE DOWNLOADING TO DISK.&type=2&timeout=5" && wget -O /dev/null -q "http://localhost/web/message?text=DEPENDING ON INTERNET SPEED, THIS CAN A WHILE&type=2&timeout=5" #&& 
cd /media/hdd/imagebackups #&&

# 11. Download image
wget --output-document=latest-zero-001.zip https://www.dropbox.com/s/9yxcrgyjwnbievv/vuzero-latest.zip?dl=0 &&
#wget --output-document=latest-[version].zip https://www.dropbox.com/s/v1ht25dudqjibky/test.txt?dl=0 #&&

wget -O /dev/null -q "http://localhost/web/message?text=Firmware update stored on hard drive, ready for flashing!&type=2&timeout=4" && 
wget -O /dev/null -q "http://localhost/web/message?text=Go to Menu>Vix>Image Manager, select 'Latest'.&type=2&timeout=5" && 
wget -O /dev/null -q "http://localhost/web/message?text=Once rebooted, go to VIX SCRIPTS to restore user files.&timeout=5"
