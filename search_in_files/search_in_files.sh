#!/usr/bin/env bash

search() {
    if [ $# -lt 2 ]; then
        echo -e "$(basename $0) \e[33mstringToSearchHere directoryHere\e[0m"
        exit 1
    fi

    grep --line-number --dereference-recursive "$@"
}

search "$@"