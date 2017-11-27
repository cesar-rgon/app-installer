#!/bin/bash
##########################################################################
# This script prepares Skype application to be installed
# @author César Rodríguez González
# @version 1.3.4, 2017-11-26
# @license MIT
##########################################################################

# Check if the script is being running by a root or sudoer user
if [ "$(id -u)" != "0" ]; then echo ""; echo "This script must be executed by a root or sudoer user"; echo ""; exit 1; fi

# Parameters
if [ -n "$1" ]; then scriptRootFolder="$1"; else scriptRootFolder="`pwd`/../.."; fi
if [ -n "$2" ]; then username="$2"; else username="`whoami`"; fi
if [ -n "$3" ]; then homeFolder="$3"; else homeFolder="$HOME"; fi

# Add common variables
. $scriptRootFolder/common/commonVariables.properties

# Download and install needed dependency
wget -O /var/cache/apt/archives/libssl1.0.0_i386.deb http://security.debian.org/debian-security/pool/updates/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u7_i386.deb
gdebi --n /var/cache/apt/archives/libssl1.0.0_i386.deb
