#!/sdcard/bin/sh
# Made By ANDROID2468
# this skips the setup on frist boot
sleep 10

# Disable script if noscript.txt is found in /system 
FILE=/system/skipSetup.txt
if [ -f "${FILE}" ]; then
    echo "terminating... skip file is present" > /cache/skipSetup.log
    exit
fi

echo "skiping Setup" >> /cache/skipSetup.log
echo "Seting setup wizird to compleate..." >> /cache/skipSetup.log
setenforce 0 >> /cache/skipSetup.log
settings put secure user_setup_complete 1 >> /cache/skipSetup.log
settings put global device_provisioned 1 >> /cache/skipSetup.log
setenforce 1 >> /cache/skipSetup.log
echo "done!"
echo "rebooting..."
touch /system/skipSetup.txt
reboot