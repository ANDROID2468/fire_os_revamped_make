#!/usr/bin/bash

# fire os rev build script 
# BY 00ANDROID2468

echo "Fire OS Revamped install script"
echo "BY ANDROID2468"
echo ""

echo "installing..."
model="${1}"

if [ "${model}" = "" ];
then
    echo "What tablet do you have?"
    read -p 'austin/ford: ' model
fi

adb sideload rev_${model}_*.zip
sleep 5
echo "Doing a factory reset"
adb shell recovery --wipe_data