#!/system/bin/sh

# This is for skiping setup, this is ment to run in adb
#
#
echo "skiping Setup"
echo "Seting setup wizird to compleate..."
settings put secure user_setup_complete 1
settings put global device_provisioned 1
echo "done!"
echo "rebooting..."
reboot



