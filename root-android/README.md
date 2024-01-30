
## Steps to root Android (Google Pixel4a-sunfish <Android 13>)


1. Enable dev options by tapping build number 7 times
2. Enable usb debugging and OEM unlocking in developer options panel from in Syste
3. Make note of build number at About phone -> Build number = TPIA.221105.002
4. Download full image for build from: https://developers.google.com/android/images
5. Unzip downoaded zip, then unzip the zip within there to get the "build.img" file needed
6. Push the build.img file to the unrooted Android device: `adb push <path_to_file>/boot.img /storage/emulated/0/Download/boot.img`
7. Install fastboot: `apt install fastboot and adb`
8. Reboot to bootloader: `adb reboot bootloader`
9. Make sure fastboot is connected: `fastboot devices`
10. `fastboot flashing unlock`
11. Sideload Magisk apk: `adb -s $(adb devices) install ~/Downloads/Magisk.apk/`, URL: https://github.com/topjohnwu/Magisk/releases/tag/v26.1
12. Patch the downloaded factory image file in Magisk: Magisk -> Install -> Select and patch a file -> Select the boot.img file pushed in step 6 
13. Hit lets go to let Magisk patch image -> Wait for path of new image file on device to be printed if it worked
14. Pull patched image to desktop: `adb pull /storage/emulated/0/Download/magisk_patched-26100_zEIYy.img ./`
15. `adb devices` -> `adb reboot bootloader` -> `fastboot devices`
16. `fastboot boot ~/Desktop/magisk_patched-26100.img`
17. Root permanently via Direct Install from Magisk: Open Magisk app -> Install Direct (Recommended) -> wait and reboot
18. Verify root after reboot from desktop: `adb shell` -> `su` -> `whoami`
19. Install this ZIP as Magisk module to trust user certs and system certs: https://github.com/NVISOsecurity/MagiskTrustUserCerts/releases



*Note: Using Ubuntu 20 for desktop machine in instructions*







