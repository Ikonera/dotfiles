#!/bin/env bash

if [[ -n $(pgrep picom) ]]; then
	exec pkill picom
else
	exec picom -b
fi
