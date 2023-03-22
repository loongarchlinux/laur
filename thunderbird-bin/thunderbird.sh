#!/bin/sh
export LD_LIBRARY_PATH=/opt/thunderbird-bin
exec /opt/thunderbird-bin/thunderbird --class "ThunderBird" --name "ThunderBird" "$@"
