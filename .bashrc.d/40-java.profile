# -*- mode: shell-script; -*-
#
# Add the JAVA_HOME environment variable

# This is a link into the homebrew OpenJDK keg
export JAVA_HOME=$HOME/bin/openjdk

# Need to prepend to path to skip the build in java commands
pathprepend $JAVA_HOME/bin

# NOTE: No longer using this approach to avoid Oracle JDK
# Found information about the `java_home` utility here
# https://medium.com/notes-for-geeks/java-home-and-java-home-on-macos-f246cab643bd
#
#export JAVA_HOME=`/usr/libexec/java_home`
