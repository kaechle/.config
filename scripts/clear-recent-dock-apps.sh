#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Clear Recent Dock Apps 
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🖥️

# Documentation:
# @raycast.author Tim Kaechle
# @raycast.authorURL https://github.com/kaechle

plutil -remove recent-apps ~/Library/Preferences/com.apple.dock.plist && killall Dock