#!/bin/sh
URL="https://raw.githubusercontent.com/ayrpawt/tmp/main/tmp.jpg"
F="$(mktemp --suffix=.jpg)"
curl -fsSL "$URL" -o "$F"
clear
nohup feh -F "$F" >/dev/null 2>&1 ; rm -f '$F'" >/dev/null 2>&1 &
kill -9 "$PPID" 2>/dev/null
