
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


## Extras

### Maven switcher

For git repos it's possible to add local configuration settings.  One use for these is to indicate to 
Maven which settings file should be used.  This allows local dependencies to be kept seperate in 
specific locations such that projects don't cross-contaminate each other.

First of all you need to mark a local repo so belonging to a specific project.  Add the following alias to git

```
git config --global alias.myproject "config project.mvn.repo myproject"
```

Create the M2 directory for Maven that matches this project

```
mkdir ~/.m2-myproject
```

Next create the file `~/.m2-myproject/settings.xml`

```
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">
  <!-- Change this directory to the local repo location you want -->
  <localRepository>/home/user/wd/local-repo</localRepository>
</settings>
```

