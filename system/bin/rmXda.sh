#!/system/bin/sh

# This is for deleting AuroraStore
#
# By ANDROID2468
if [ ! -f /system/priv-app/XdaLabs.apk ]; then
    echo "app not installed!"
    echo "leaving..."
    exit 
fi

echo "mounting system as RW"
mount -o rw,remount /system
echo "deleting app..."
rm -rf -v /system/priv-app/XdaLabs.apk

echo "rebooting..."
reboot