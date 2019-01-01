#!/bin/bash

# disable spotlight indexing
launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist
