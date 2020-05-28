#!/usr/bin/bash

# fire os rev build script 
# BY 00ANDROID2468
# place your system.img at the root of this dir

echo "Fire OS Revamped build script"
echo "BY ANDROID2468"
echo ""

model="${1}"

# get the date 
fireDate="$(date +%b\ %d\ %Y)"
fileDate="$(date +%F)"

if [ "${model}" = "" ];
then
    echo "What tablet do you have?"
    read -p 'austin/ford: ' model
fi

if [ "${model}" != "austin" ] && [ "${model}" != "ford" ];
then
    echo "incompatable model $model, only ford and austin right now."
    echo "leaving..."
    exit
fi

# Deleting out if exitis
if [ -d out ];
then
    rm -rf out
fi
mkdir out

# Checking if the system.img is in the root dir
if [ ! -f ${model}.img ];
then
    echo "${model}'s system img is not in the root dir!"
    echo "Make shure that you rename system.img to ${model}.img"
    echo "leaving..."
    exit 
fi

# Copy system.img to out
echo "copying system.img to out"
cp -r ${model}.img out/system.img

# Mounting system
echo "Mounting system.img to mount/"
sudo mount -t ext4 -o loop out/system.img mount/

# Checking if the system.img is mounted correctly
if [ ! -f mount/build.prop ]; then
    echo "Failed to mount correctly!"
    echo "leaving..."
    exit 
fi

echo "deleting apks"
# Remove that crappy launcher 
sudo rm -rf -v mount/priv-app/com.amazon.firelauncher

# Remove OTA updates
sudo rm -rf -v mount/priv-app/DeviceSoftwareOTA
sudo rm -rf -v mount/priv-app/com.amazon.kindle.otter.oobe.forced.ota

# Remove Ads
sudo rm -rf -v mount/priv-app/com.amazon.kindle.kso
sudo rm -rf -v mount/priv-app/AdvertisingIdSettings

# Remove other amazon apps
sudo rm -rf -v mount/priv-app/WhisperplayCore
sudo rm -rf -v mount/priv-app/com.amazon.csapp
sudo rm -rf -v mount/priv-app/com.amazon.cloud9.kids-stub
sudo rm -rf -v mount/priv-app/WhisperplayActivityView
sudo rm -rf -v mount/priv-app/com.amazon.dp.fbcontacts
sudo rm -rf -v mount/priv-app/WhisperlinkSdk
sudo rm -rf -v mount/priv-app/com.amazon.cloud9.contentservice
sudo rm -rf -v mount/priv-app/com.amazon.device.sync
sudo rm -rf -v mount/priv-app/ReadyNowCore-release
sudo rm -rf -v mount/priv-app/MapsAPIClientServices-release-signed
sudo rm -rf -v mount/priv-app/com.amazon.unifiedsharetwitter
sudo rm -rf -v mount/priv-app/MetricsService
sudo rm -rf -v mount/priv-app/DeviceMessagingAndroid
sudo rm -rf -v mount/priv-app/com.amazon.kor.demo
sudo rm -rf -v mount/app/Music
sudo rm -rf -v mount/priv-app/com.amazon.cloud9
sudo rm -rf -v mount/app/jp.co.omronsoft.iwnnime.languagepack.zhcn_az
sudo rm -rf -v mount/priv-app/com.amazon.kcp.tutorial
sudo rm -rf -v mount/priv-app/com.amazon.fireinputdevices
sudo rm -rf -v mount/priv-app/com.amazon.redstone
sudo rm -rf -v mount/priv-app/com.amazon.ags.app
sudo rm -rf -v mount/priv-app/com.amazon.unifiedsharegoodreads
sudo rm -rf -v mount/priv-app/com.amazon.geo.client.maps
sudo rm -rf -v mount/priv-app/com.goodreads.kindle
sudo rm -rf -v mount/priv-app/FireRecessProxy
sudo rm -rf -v mount/app/jp.co.omronsoft.iwnnime.mlaz
sudo rm -rf -v mount/priv-app/com.amazon.tahoe
sudo rm -rf -v mount/app/PinyinIME.apk
sudo rm -rf -v mount/priv-app/moffice_7.1_default_en00105_multidex_217792
sudo rm -rf -v mount/priv-app/com.amazon.photos.importer
sudo rm -rf -v mount/priv-app/com.amazon.zico
sudo rm -rf -v mount/priv-app/com.amazon.kindle.personal_video


echo ""

# Building zip
mkdir -p out/zip/META-INF/com/google/android/
mkdir out/zip/system/
mkdir -p out/zip/system/framework/
# Copy apk's and other stuff
echo "copying files..."
cp -R -v system/* out/zip/system/
echo ""
echo "copying files for $model..."
if [ "${model}" = "austin" ];
then
    cp -r austin/boot.img out/zip/
    cp -r austin/zip/* out/zip/META-INF/com/google/android/
    cp -r -v austin/framework-res.apk out/zip/system/framework/
    sudo cp -r austin/build.prop mount/
fi
if [ "${model}" = "ford" ];
then
    cp -r -v ford/boot.img out/zip/
    cp -r -v ford/zip/* out/zip/META-INF/com/google/android/
    cp -r -v ford/framework-res.apk out/zip/system/framework/
    sudo cp -r -v ford/build.prop mount/
fi

# Print build date to build.prop
echo ""
echo "printing the build date to build.prop"
echo "ro.build.version.name=Fire OS revamped $fireDate" | sudo tee -a mount/build.prop
echo "ro.build.mktg.fireos=Fire OS revamped $fireDate" | sudo tee -a mount/build.prop

# Magisk
mkdir -p out/zip/rootzip/
cp -r -v Magisk.zip out/zip/rootzip/

# Unmount system.img
sudo umount mount/

# Zipping up rom
cp -r out/system.img out/zip/
cd out/zip/
zip -r rev_${model}_$fileDate *
cd .. 
cd ..
cp -r out/zip/rev_${model}_$fileDate.zip out/
echo "done"
echo "zip name: rev_${model}_$fileDate.zip"
echo "The zip is in the out dir"
