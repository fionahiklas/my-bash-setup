#!/bin/env bash
# -*- mode: shell-script-mode; -*-

# Find the location for user Ruby gems
export USER_GEMS=`gem env | grep "USER INSTALLATION DIRECTORY" | sed -e 's/^.*\(\/home.*\)$/\1/'`

# Append this to the path
pathappend $USER_GEMS/bin

