#!/bin/env bash

set -e

if [[ -n $(pgrep spotify) ]]; then
	TITLE=$(dbus-send --print-reply --dest="org.mpris.MediaPlayer2.spotify" /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | sed s'/.$//' | cut -c27- | sed -ne 41p | awk -F '"' '{print $2}')

	ARTIST=$(dbus-send --print-reply --dest="org.mpris.MediaPlayer2.spotify" /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' | sed s'/.$//' | sed -ne 28p | awk -F '"' '{print $2}')

	echo ${ARTIST} ":" ${TITLE}
else
	echo "Spotify not running..."
fi
