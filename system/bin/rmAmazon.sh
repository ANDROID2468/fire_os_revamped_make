#!/system/bin/sh

# This is for deleting amazon apps (it lets you choose what to delete.)
#
# By ANDROID2468

echo "mounting system as RW"
mount -o rw,remount /system

# alexa
while true
do
 echo "Do you wish to delete alexa? [Y/n] "
 read input

 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting alexa..."
 rm -rf -v /system/priv-app/com.amazon.dee.app
 rm -rf -v /system/priv-app/amazon.alexa.tablet
 rm -rf -v /system/priv-app/com.amazon.vans.alexatabletshopping.app
 rm -rf -v /system/priv-app/SpeechUi
 rm -rf -v mount/priv-app/com.amazon.gloria.graphiq
 rm -rf -v mount/priv-app/com.amazon.gloria.smarthome
 rm -rf -v mount/priv-app/com.amazon.glorialist
 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# prime video
while true
do
 echo "Do you wish to delete prime video? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting prime video..."
 rm -rf -v /system/priv-app/com.amazon.avod
 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# kindle/newsstand
while true
do
 echo "Do you wish to delete kindle and newsstand? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "kindle and newsstand..."
 rm -rf -v /system/priv-app/com.amazon.kindle
 rm -rf -v /system/priv-app/com.amazon.webapp
 rm -rf -v /system/priv-app/com.amazon.ods.kindleconnect
 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# amazon shoping
while true
do
 echo "Do you wish to delete amazon shoping? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting amazon shoping..."
 rm -rf -v /system/priv-app/com.amazon.windowshop

 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# amazon shoping
while true
do
 echo "Do you wish to delete audible? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting audible..."
 rm -rf -v /system/priv-app/com.audible.application.kindle

 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# amazon music
while true
do
 echo "Do you wish to delete amazon music? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting amazon music..."
 rm -rf -v /system/priv-app/com.amazon.mp3

 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# amazon appstore 
while true
do
 echo "Do you wish to delete appstore? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting amazon appstore..."
 rm -rf -v /system/priv-app/com.amazon.venezia

 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

# amazon photos
while true
do
 echo "Do you wish to delete amazon photos (you won't be able to change your lockscreen wallpaper)? [Y/n] " 
 read input
 
 case $input in
     [yY][eE][sS]|[yY])
 echo "deleting amazon appstore..."
 rm -rf -v /system/priv-app/com.amazon.photos

 break
 ;;
     [nN][oO]|[nN])
 echo ""
 break
        ;;
     *)
 echo "Invalid input..."
 ;;
 esac
done

#reboot
echo "rebooting..."
reboot