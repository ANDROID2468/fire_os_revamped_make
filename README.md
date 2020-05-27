## Building fire os revamped

you will have to provide your own system img luckly I have a download link for them ;)

# downlowing instructions

```
git clone https://github.com/ANDROID2468/build_fireOS_kernel.git -b mt8127

cd build_fireOS_kernel
```

## Building instructions 

run this commmand:
```
./make.sh ford
```
or 

```
./make.sh austin
```
## Adb scripts 

# setupSkip.sh

this is to skip setup at first boot
To run type this in terminal/cmd:

```
adb shell sh /system/bin/setup.sh
```

