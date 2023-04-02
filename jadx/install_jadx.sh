#!/bin/bash
#


printf "\nInstalling Jadx..\n"


git clone https://github.com/skylot/jadx.git


cd jadx

./gradlew dist


#export PATH=$PATH:path/to/build/jadx/bin/jadx




