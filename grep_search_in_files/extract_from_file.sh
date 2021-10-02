#!/usr/bin/env bash

extract() {
    if [ $# -lt 2 ]; then
        echo -e "$(basename $0) \e[33mfileHere stringToSearchHere\e[0m"
        exit 1
    fi

    local file="$1"
    shift

    cat "$file" | grep --perl-regexp --only-matching "$@"
}

extract "$@"