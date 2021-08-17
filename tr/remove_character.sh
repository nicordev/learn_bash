#!/usr/bin/env bash

removeCharacter() {
    if [ $# -lt 2 ]; then
        echo -e "$(basename $0) \e[33mstringHere characterHere\e[0m"
        exit 1
    fi

    echo "$1" | tr --delete "$2"
}

removeCharacter "$@"
