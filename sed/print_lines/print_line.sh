#! /bin/bash

printLine() {
    if [ $# -lt 1 ]; then
        echo -e "\e[33mlineNumberHere fileHere\e[0m"

        return 1
    fi

    sed --quiet "$1p" "$2"
}

printLine "$@"