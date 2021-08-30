#!/usr/bin/env bash

search() {
    if [ $# -lt 2 ]; then
        echo -e "$(basename $0) \e[33mstringToSearchHere directoryHere fileInclusionPattern fileExclusionPattern\e[0m"
        exit 1
    fi

    if [ -n "$3" ]; then
        local include="--include=$3"
    fi

    if [ -n "$4" ]; then
        local exclude="--exclude=$4"
    fi

    echo $include $exclude

    grep --line-number --dereference-recursive "$1" "$2" $include $exclude
}

search "$@"