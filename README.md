## Building fire os revamped
THIS ONLY WORKS IN LINX! I don't plan on making a windows version. you can use WsL (Linux subsystem for windows) if you are on windows...
oh oops, its is Windows Subsystem for Linux, I forgot microsoft thinks backwords :D .

you will have to provide your own system img luckly I have a download link for them ;)

[Android File host](https://www.androidfilehost.com/?w=files&flid=312816)
you will have to rename system.img to [model].img. (change [model] to ford or austin)

# downlowing instructions

```
git clone https://github.com/ANDROID2468/fire_os_revamped_make.git

cd fire_os_revamped_make
```
place [model].img into fire_os_revamped_make folder

## Building instructions 

run this commmand:
```
./make.sh ford
```
or 

```
./make.sh austin
```

# Adb scripts 

## setupSkip.sh

[This](https://github.com/ANDROID2468/fire_os_revamped_make/blob/master/system/bin/setupSkip.sh) script skips setup at first boot. 

To run, type this in terminal/cmd:
```
adb shell sh /system/bin/setupSkip.sh
```

## rmAmazon.sh
[This](https://github.com/ANDROID2468/fire_os_revamped_make/blob/master/system/bin/rmAmazon.sh) script lets you choose what amazon apps to delete that are still on the system.

To run, type this in terminal/cmd:
```
adb shell sh /system/bin/rmAmazon.sh
```

## rmXda.sh
[This](https://github.com/ANDROID2468/fire_os_revamped_make/blob/master/system/bin/rmXda.sh) script removes xdaLabs 

To run, type this in terminal/cmd:
```
adb shell sh /system/bin/rmXda.sh
```

## rmAurora.sh
[This](https://github.com/ANDROID2468/fire_os_revamped_make/blob/master/system/bin/rmAurora.sh) script remove Aurora Store. Aurora Store is a open source play store client.

To run, type this in terminal/cmd:
```
adb shell sh /system/bin/rmAurora.sh
```

## rmGapps.sh
[This](https://github.com/ANDROID2468/fire_os_revamped_make/blob/master/system/bin/rmGapps.sh) script removes gapps (if installed).

To run, type this in terminal/cmd:
```
adb shell sh /system/bin/rmGapps.sh
```