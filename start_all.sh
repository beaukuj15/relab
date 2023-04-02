#!/bin/bash
#


printf "Stopping genymotion and mitmproxy tools...\n\n"



./mitmprox/mitmweb &

./genymotion/genymotion &


