#!/system/bin/sh
su 
if [ -f setup.xda ];
then
    sleep 50
    setenforce 0
    settings put secure user_setup_complete 1
    settings put global device_provisioned 1
    setenforce 1
    rm -rf /system/setup.xda
    reboot
fi
