#!/usr/bin/env bash

getFileLastLine() {
    tail --lines=1 "$@"
}

insertBeforeLastLine() {
    if [ $# -lt 2 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mfileNameHere contentHere\e[0m"
        exit 1
    fi

    local fileName="$1"
    local lastLine=$(getFileLastLine "$fileName")
    local content="$2"

    sed -i "\$s/.*/$content/" "$fileName" || exit
    echo $lastLine >> "$fileName"
}

insertBeforeLastLine "$@"