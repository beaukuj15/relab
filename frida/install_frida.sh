#!/bin/bash
#


printf "Installing frida tools and python venv..\n\n"

sudo apt install python3-venv

pip install frida-tools



printf "\nChecking frida version..\n"

frida --version


