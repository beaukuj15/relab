#!/bin/bash
#


printf "\n\nBypassing ssl pin in Claro colombia"


frida -l frida_scripts/multiple_unpinning -U -f com.clarocolombia.miclaro --no-pause



