#!/bin/env bash
# -*- mode: shell-script-mode; -*-

# Use a script that allows switching to different Maven settings
if [ `which mvn` ]
then
    export MAVEN_HOME=`mvn -v | awk  '/^Maven home:/{ print $3 }'`
    alias mvn="$HOME/bin/mvn-switcher"
fi

