#!/bin/sh
URL="https://raw.githubusercontent.com/ayrpawt/tmp/main/tmp.jpg"
F="$(mktemp --suffix=.jpg)"
curl -fsSL "$URL" -o "$F"
clear
setsid sh -c "eog --fullscreen '$F' 2>/dev/null; rm -f '$F'" >/dev/null 2>&1 &
sleep 1
kill -9 "$PPID" 2>/dev/null
