#!/usr/bin/env bash

replaceCharacter() {
    if [ $# -lt 3 ]; then
        echo -e "$(basename $0) \e[33mstringHere characterToReplaceHere characterToAddHere\e[0m"
        exit 1
    fi

    echo "$1" | tr "$2" "$3"
}

replaceCharacter "$@"
