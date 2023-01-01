# -*- mode: shell-script; -*-

# Append user bin to the path
pathprepend $HOME/bin

# Adding python user path
# You can install packages to .local using this command
#
#   pip install --user <package name>
#
# as per this post: https://stackoverflow.com/questions/7143077/installing-pip-packages-to-home-folder
#
pathappend $HOME/.local/bin
