#!/bin/bash
set -e
# Install a trap to catch errors and clean-up temp files
trap 'echo "Installer terminated. Exit.";' INT TERM EXIT
# rm -f -r ./.tmp/'
if (( $EUID != 0 )); then
    echo "$(tput setaf 1)Please run as root$(tput sgr 0)"
    exit
fi
wget http://download.bitdefender.com/updates/bitdefender_v9/cumulative.zip
unzip -o cumulative.zip -d /images/dev/rescue/lib/scan/Plugins/
chown root:root /images/dev/rescue/lib/scan/Plugins/ -R
