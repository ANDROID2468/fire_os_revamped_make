#!/system/bin/sh
# This is for deleting microG apps.
# By ANDROID2468

echo "mounting system as RW"
mount -o rw,remount /system


while true
do
 echo "do you wish to continue? [Y/n] "
 read input

 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting microG..."
 rm -rf -v /system/priv-app/FakeStore
 rm -rf -v /system/priv-app/GmsCore
 rm -rf -v /system/priv-app/GsfProxy
 rm -rf -v /system/priv-app/SpeechUi
 rm -rf -v /system/app/DroidGuard
 rm -rf -v /system/app/nlpBackendDejavu
 rm -rf -v /system/app/nlpBackendNominatim
 
 break
 ;;
     [nN][oO]|[nN])
 echo "bye!"
 exit
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# reboot
echo "rebooting system..."
reboot