#!/system/bin/sh

# This is for deleting AuroraStore
#
# By ANDROID2468
if [ ! -f /system/priv-app/AuroraStore_*.apk ]; then
    echo "app not installed!"
    echo "leaving..."
    exit 
fi

echo "mounting system as RW"
mount -o rw,remount /system
echo "deleteing app..."
rm -rf -v /system/priv-app/AuroraStore_*.apk

echo "rebooting..."
reboot