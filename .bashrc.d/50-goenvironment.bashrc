# -*- mode: shell-script; -*-
#
# Override the Go command line tools to use different
#

__go_override() {
    base_dir=`git rev-parse --show-toplevel 2> /dev/null`
    if [ $? ]  
    then
	override=`git config override.go.env 2> /dev/null`
	if [ 0 -eq $? -a 1 -eq "$override" ]
	then
	    (export GOENV="$base_dir/.go.env" ; $* )
	    return $?
	fi
    fi

    echo "** using default GOENV value **"
    $*
    
}

__go() {
    __go_override "go" $* 
}


__gofmt() {
    __go_override "gofmt" $*
}

alias go=__go
alias gofmt=__gofmt

