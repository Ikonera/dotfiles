#!/bin/env bash

set -e

if [[ -e $(pgrep polybar) ]]; then
	killall polybar
fi
polybar -q main -c "${HOME}/.config/polybar/config.ini"
