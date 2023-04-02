#!/bin/bash
#




printf "\nChecking processor type of attached Android..\n\n"


adb shell getprop | grep abi



printf "\nNEXT: \nDownload matching frida-server from: https://github.com/frida/frida/releases\n"

printf "\n\nThen extract frida-server and push to Android with: \n"

printf "adb push ./frida-server /data/local/tmp\nadb shell chmod +x /data/local/tmp/frida-server\n"

# adb push ./frida-server /data/local/tmp
# adb shell chmod +x /data/local/tmp/frida-server




