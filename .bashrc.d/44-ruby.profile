# -*- mode: shell-script; -*-

# Find the location for user Ruby gems
export USER_GEMS=`gem env | grep "USER INSTALLATION DIRECTORY" | sed -e 's/^.*\(\/Users\/.*\)$/\1/'`
export USER_GEMS_BIN=${USER_GEMS}/bin

echo "Adding user Gems bin to PATH: ${USER_GEMS_BIN}"

# Append this to the path
pathprepend "$USER_GEMS_BIN"

