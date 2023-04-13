# -*- mode: shell-script; -*-
#
# Need to install awsume on Linux
# instructions are here https://awsu.me/general/quickstart.html
# I ran this command
#
#  pip install awsume --user
#
# This also relies on the `~/.local/bin` directory being added to
# the path which should be covered in `10-pythonlocal.bashrc`
#
echo "Adding assume alias"

# From these instructions https://awsu.me/utilities/awsume-configure.html
alias assume=". awsume"

