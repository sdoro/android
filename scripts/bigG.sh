# wait emulator is ready:
adb -s emulator-5554 wait-for-device

# lets go
adb -s emulator-5554 shell mount -o remount,rw -t yaffs2 /dev/block/mtdblock0 /system
adb shell chmod 777 /system/app
adb push GoogleLoginService.apk /system/app/
adb push GoogleServicesFramework.apk /system/app/
adb push Phonesky.apk /system/app/

# maps:
adb push com.google.android.apps.maps-1.apk /system/app/
adb push com.google.android.gms-2.apk /system/app/

# bot
