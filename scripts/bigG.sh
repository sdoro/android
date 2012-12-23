#!/bin/bash

APK=../apk

# start emulator
# emulator -avd am -partition-size 1000

# wait until emulator is ready:
adb -s emulator-5554 wait-for-device

# now the loading of the apks
adb -s emulator-5554 shell mount -o remount,rw -t yaffs2 /dev/block/mtdblock0 /system
adb shell chmod 777 /system/app
adb push $APK/GoogleLoginService.apk      /system/app/
adb push $APK/GoogleServicesFramework.apk /system/app/
adb push $APK/Phonesky.apk                /system/app/
adb shell rm /system/app/SdkSetup*

# maps:
#adb push $APK/com.google.android.apps.maps-1.apk /system/app/
#adb push $APK/com.google.android.gms-2.apk /system/app/

# bot
