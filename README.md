# My bash setup

## Overview

I keep having to hack PATH and other bits and pieces in bash so that I can develop for 
Ruby, node and other languages.  

I found some links that explain how to make things more reusable without constant `.bashrc` file
hacking.

## Setup

Add the following to the end of the current `.bashrc` file

```
# Read files from .bashrc.d and apply
for file in `ls ~/.bashrc.d | sort | grep -e '.bashrc$'`
do
    source ~/.bashrc.d/$file
done
```

Copy the `.bashrc.d` directory contents to `$HOME/.bashrc.d`



