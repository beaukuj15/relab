
## Steps to root Android (Google Pixel4a-sunfish <Android 13>)


1. Enable dev options by tapping build number 7 times
2. Enable usb debugging and OEM unlocking in developer options panel from in Syste
3. Make note of build number at About phone -> Build number = TPIA.221105.002
4. Download full image for build from: https://developersd.google.com/android/ota#sunfish
5. Install fastboot: `apt install fastboot and adb`
6. Reboot to bootloader: `adb reboot bootloader`
7. Make sure fastboot is connected: `fastboot devices`
8. `fastboot flashing unlock`
9. Sideload Magisk apk: `adb -s $(adb devices) install ~/Downloads/Magisk.apk/`, URL: https://github.com/topjohnwu/Magisk/releases/tag/v26.1
10. Patch the downloaded factory image file in Magisk: Magisk -> Install -> Select and patch a file -> Select the unzipped boot.img file (Note: Within original zip for factory image there is another zip that boot.img is within) 
11. Hit lets go to let Magisk patch image -> Wait for path of new image file on device to be printed if it worked
12. Pull patched image to desktop: `adb pull /storage/emulated/0/Download/magisk_patched-26100_zEIYy.img ./`
13. `adb devices` -> `fastboot devices`
14. `fastboot boot ~/Desktop/magisk_patched-26100.img`
15. Root permanently via Direct Install from Magisk: Open Magisk app -> Install Direct (Recommended) -> wait and reboot
16. Verify root after reboot from desktop: `adb shell` -> `su` -> `whoami`
17. Install this ZIP as Magisk module to trust user certs and system certs: https://github.com/NVISOsecurity/MagiskTrustUserCerts/releases






*Note: Using Ubuntu 20 for desktop machine in instructions*







