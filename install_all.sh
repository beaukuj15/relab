#!/bin/bash
#



printf "Installing mitmproxy binaries and genymotion..\n\n"



wget https://snapshots.mitmproxy.org/9.0.1/mitmproxy-9.0.1-linux.tar.gz -O mitmproxy.tar.gz


mkdir -p ./mitmprox

tar -xvf ./mitmproxy.tar.gz -C ./mitmprox


rm -v mitmproxy.tar.gz

printf "\nInstalled mitmproxy binaries at ./mitmprox\n"


#wget https://dl.genymotion.com/releases/genymotion-3.1.2/genymotion-3.1.2-linux_x64.bin
#chmod +x ./genymotion-3.1.2-linux_x64.bin
#./genymotion-3.1.2-linux_x64.bin --yes





