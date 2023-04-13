# -*- mode: shell-script; -*-
#
# Needed to pickup user installed utilities

LOCAL_BIN=$HOME/.local/bin

echo "Adding local bin: $LOCAL_BIN"

pathappend $LOCAL_BIN

