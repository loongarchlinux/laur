#!/bin/sh
export LD_LIBRARY_PATH=/opt/firefox-bin
exec /opt/firefox-bin/firefox --class "Firefox" --name "Firefox" "$@"
