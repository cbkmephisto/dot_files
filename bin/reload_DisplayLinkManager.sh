#!/bin/bash

# This script is used to deal with "Dell D6000 Dock ubuntu reset/freeze/dual monitor blank out" issue (search in google for details)
# Google results suggested that the only method to recover is to unplug and plug again
# But I found out that kill -9 the driver process will force it to restart, and just reload the extra monitors will do.
# Hailin Su 2019-10-someday early

# DisplayLinkManager is the driver of Dell dock for Linux
for pid in `ps -A | grep -i displaylinkmana | awk '{print $1}'`
do
	sudo kill -9 $pid
done

# sudo /opt/displaylink/DisplayLinkManager &  # I realized that it will restart auto

echo Done. Please WAIT for seconds to allow displaylinkmanager to restart

# sleep 7

# xrandr --output DVI-I-2-2 --auto --rotate right --pos 0x0 --left-of eDP-1 --output eDP-1 --pos 1080x960 --output DVI-I-1-1 --auto --right-of eDP-1

