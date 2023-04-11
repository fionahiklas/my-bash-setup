# -*- mode: shell-script; -*-
#
# Tools for Scala versions
#
# Installing coursier usinfg the JAR-based launcher
#
# Following instructions https://get-coursier.io/docs/cli-installation#jar-based-launcher
#
# ```
# mkdir -p $HOME/tools/coursier/bin
# cd !$
# curl -fLo coursier https://github.com/coursier/launchers/raw/master/coursier && chmod +x coursier
# ```
#

echo "Adding coursier into path"

export COURSIER_HOME=$HOME/tools/coursier

pathappend $COURSIER_HOME/bin
pathappend $HOME/Library/Application\ Support/Coursier/bin


