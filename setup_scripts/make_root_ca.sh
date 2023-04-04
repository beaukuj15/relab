#!/bin/bash
#


printf "Copying mitm cert to root certs on Android...\n\n"


mkdir -p certs_mitm
cd ./certs_mitm

cp -v ~/.mitmproxy/mitmproxy-ca-cert.cer .

hashed_name=`openssl x509 -inform PEM -subject_hash_old -in mitmproxy-ca-cert.cer | head -1` && cp mitmproxy-ca-cert.cer $hashed_name.0


adb remount
adb push $hashed_name.0 /etc/security/cacerts/

adb shell chmod 644 /etc/security/cacerts/$hashed_name.0
adb reboot

printf "\nFinished copying mitm cert to system certs on Android\n\n"


