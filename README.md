# relab
Lab for reverse engineering APKs


### RE environment for dynamic and static analysis of APKs

Includes:

1. mitmproxy
2. Frida
3. Genymotion
4. Jadx
5. apktool

_**Note:** Setup scripts built and tested on Ubuntu 20_

#### Prereqs: 

1. Python3: `sudo apt install python3`
2. pip3: `sudo apt install python3-pip`
3. dev-tools: `apt install build-essential`)


#### Install Dynamic Analysis Tools

1. Run install script for mitmproxy and genymotion emulator: `./install_all.sh`
2. Create and start Android emulated device in Genymotion OR attach physical rooted test Android device over USB.
3. Make sure test device is accessible over adb with root access: `adb shell` -> `su`
4. Run script to copy mitmproxy cert to be system cert on device: `cd setup_scripts; ./make_root_ca.sh`  
5. Install frida: `cd frida; ./install_frida.sh`
6. Get frida-server binary then push to test Android device: `./get_frida_server.sh`
7. Start frida-server on Android: `adb shell` -> `su` -> `/data/local/tmp/frida-server &`
8. Verify frida is attaching to device over adb: `frida-ps -U`


_**Note:**_ May need to mount Android filesystem as writable after step 3: `adb shell; su; mount -o rw,remount /system`

#### Capturing Live HTTPS from app

1. Start mitmproxy on desktop: `cd mitmprox; ./mitmweb`
2. Make sure test Android is connected to proxy: `Settings` -> `Network` -> `Wi-Fi` -> `Click then hold down connected network` -> `Modify network` -> `(click) Advanced options drop down` -> `Set Proxy to "Manual"` -> `hostname = IP of desktop` -> `proxy port = 8080`
3. Visit any site in browser on Android to verify decryption
4. View decrypted traffic in `mitmweb` browser on desktop at: `localhost:8081`



#### Use Frida to bypass SSL pinning and capture files accessed

1. Make sure frida server is started on Android and verify connection: `frida-ps -U`
2. Find name of app package to target with frida: `adb shell pm list packages`
3. Bypass SSL for targeted app: `frida --codeshare akabe1/frida-multiple-unpinning -U -f <package_id> --no-pause`
4. Trace files being opened by app on device: `frida-trace -U -i open -f <package_id>`


_**Note:** Most Android apps do not need SSL pinning bypass for mitmproxy to work_
