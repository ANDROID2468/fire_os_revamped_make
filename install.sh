#!/usr/bin/bash

# fire os rev build script 
# BY 00ANDROID2468

echo "Fire OS Revamped install script"
echo "BY ANDROID2468"
echo ""

echo "installing..."

adb sideload out/*.zip
sleep 5
echo "Doing a factory reset"
adb shell recovery --wipe_data