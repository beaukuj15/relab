#!/bin/bash
#


# Place this script in same folder as target "AndroidManifest.xml"


printf "Parsing android manifests...\n\n"

mkdir -p outputs
printf "Parsing folder: $f\n"

OFILE="outputs/app-summ.txt"

printf "\n************************************************" >> $OFILE
printf "\n\nPermissions for $f\n\n" >> $OFILE
cat ./AndroidManifest.xml | grep "<uses-perm" | grep -v ".work" | awk -F 'name="' '{print $2}' | awk -F '"' '{print $1}' >> $OFILE


printf "\n\nReceivers: \n" >> $OFILE
cat ./AndroidManifest.xml | grep "<receiver" | grep -v ".work" | awk -F 'name="' '{print $2}' | awk -F '"' '{print $1}' >> $OFILE

printf "\n\nServices: \n" >> $OFILE
cat ./AndroidManifest.xml | grep "<service" | grep -v ".work" | awk -F 'name="' '{print $2}' | awk -F '"' '{print $1}' >> $OFILE

printf "\n\nProviders: \n" >> $OFILE
cat ./AndroidManifest.xml | grep "<provider" | grep -v ".work" | awk -F 'name="' '{print $2}' | awk -F '"' '{print $1}' >> $OFILE


printf "Parsed manifest file to: $OFILE\n\n"


