#! /bin/bash

#SCRIPT_NAME=$(basename $0)
SCRIPT_NAME=$(basename $BASH_SOURCE)

change_directory() {
    if [ $# -lt 1 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mdirectoryName\e[0m"
        exit
    fi

    cd "$1"
    $SHELL # here is where the magic occurs! You could use exec bash instead on former bash versions
}

# Display the source code of this file
howItWorks() {
    cat $0
}

# List all functions that do not begin with an underscore _
_listAvailableFunctions() {
    cat $0 | grep -E '^[a-z]+[a-zA-Z0-9]*\(\) \{$' | sed 's#() {$##'
}

if [ $# -eq 0 ]; then
    _listAvailableFunctions
    exit
fi

$@
