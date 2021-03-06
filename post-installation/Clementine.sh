#!/bin/bash
##########################################################################
# This script configures Clementine application to use monochrome taskbar
# icons.
# @author César Rodríguez González
# @version 1.3, 2016-08-09
# @license MIT
##########################################################################

# Check if the script is being running by a root or sudoer user
if [ "$(id -u)" != "0" ]; then echo ""; echo "This script must be executed by a root or sudoer user"; echo ""; exit 1; fi

# Parameters
if [ -n "$1" ]; then scriptRootFolder="$1"; else scriptRootFolder="`pwd`/.."; fi
if [ -n "$2" ]; then username="$2"; else username="`whoami`"; fi
if [ -n "$3" ]; then homeFolder="$3"; else homeFolder="$HOME"; fi

# Add common variables
. $scriptRootFolder/common/commonVariables.properties

# Create symbolic links for Clementine monochrome taskbar icons
ln -s /usr/share/icons/ubuntu-mono-dark/apps/24/clementine-panel.png /usr/share/icons/hicolor/24x24/status/clementine-panel.png
ln -s /usr/share/icons/ubuntu-mono-dark/apps/24/clementine-panel-grey.png /usr/share/icons/hicolor/24x24/status/clementine-panel-grey.png
