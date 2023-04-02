#!/bin/bash
#


printf "\n\nBypassing ssl pin in Claro colombia"


frida --codeshare akabe1/frida-multiple-unpinning -U -f com.clarocolombia.miclaro --no-pause



