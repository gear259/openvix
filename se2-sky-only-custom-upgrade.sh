echo ""
echo ""
echo "This script will backup userfiles and download custom firmware to the latest custom version"
echo ""
echo "WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE!...."
echo "......................................................"
wget -O /dev/null -q "http://localhost/web/message?text=WAIT WHILE USER FILES ARE BACKED UP TO HARD DRIVE&type=2&timeout=2"
cd /etc/ &&
cp -f -v inadyn.conf host* wpa_supplicant* fstab /media/hdd &&
cd /etc/enigma2/ &&
cp -f -v -r /etc/tuxbox/config /media/hdd &
cp -f -v autotimer.xml timers.xml userbouquet.favourites.tv /media/hdd &
cp -f -v /etc/network/interfaces /media/hdd &
rm -r /media/hdd/imagebackups/latest* &
#cd /etc/ &&
#cp -f -v inadyn.conf host* wpa_supplicant* fstab /media/hdd &&
#cd /etc/enigma2/ &&
#cp -f -v -r /tuxbox/config /media/hdd &&
#cp -f -v autotimer.xml timers.xml userbouquet.favourites.tv /media/hdd &&
#cp -f -v /etc/network/interfaces /media/hdd &&
#rm -r /media/hdd/imagebackups/latest* &&
echo "......................................................."
echo "USER FILES SAVED FOR RESTORE AFTER UPDATE"
echo "Showing a list of backed up files...."
ls -a /media/hdd/
sleep .5
echo "Now preparing to download new custom firware...."
echo "......................................................."
echo "......................................................."
echo "DEPENDING ON INTERNET SPEED, THIS CAN A WHILE..................." &&
cd /media/hdd/imagebackups
echo "Downloading ...................................................." &&
wget --output-document=se2-sky-only-dec18.zip https://www.dropbox.com/s/6luat2e9wuxg0ve/se-skyonly.zip?dl=0 &&
echo "======================================================="
echo "======================================================="
echo "NOTE: File saved in '/hdd/imagebackups' go and flash it!"
echo ""
echo "Once flashed and rebooted, go to MENU/VIX/SCRIPTS/RESTORE"
echo ""
echo "Go to /Vix/IMAGE MANAGER, select 'Latest' and FLASH"
echo "NOW your ready to press EXIT TWICE to get to Image Manager"
