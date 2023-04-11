# -*- mode: shell-script; -*-
#
# Using jenv to manage everything
#
# Following instructions here https://www.jenv.be
#
# ```
# cd $HOME/tools
# git clone https://github.com/jenv/jenv.git jenv
# ```
#
# Using relevant package manager (or homebrew) to install multiple
# JDK versions, 11, and 19 currently

echo "Adding jenv into the path"

pathappend $HOME/tools/jenv/bin

eval "$(jenv init -)"
