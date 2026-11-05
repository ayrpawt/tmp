#!/bin/sh
URL="https://raw.githubusercontent.com/ayrpawt/tmp/main/tmp.jpg"
F="$HOME/.cache/wp.jpg"
curl -fsSL "$URL" -o "$F"
if command -v eog >/dev/null; then
  setsid eog --fullscreen "$F" >/dev/null 2>&1 &
elif command -v feh >/dev/null; then
  setsid feh -F "$F" >/dev/null 2>&1 &
else
  xdg-open "$F" >/dev/null 2>&1 &
fi
