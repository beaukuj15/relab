#!/bin/bash
#


# adb shell pm list packages

#BUNDLE_ID="com.duckduckgo.mobile.android"
BUNDLE_ID=$1


mkdir -p ./apks

printf "Downloading bundle id: $BUNDLE_ID\n\n"

APK=$(adb shell pm path $BUNDLE_ID)
printf "\nAPK path on device: $APK\n"

APK=`echo $APK | awk '{print $NF}' FS=':' | tr -d '\r\n'`
printf "\napk file:  $APK\n"

NEW_APK_FP="./apks/$BUNDLE_ID.apk"

adb pull $APK $NEW_APK_FP
printf "\nDownloaded apk file: $NEW_APK_FP\n"
