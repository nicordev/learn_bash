#!/usr/bin/env bash

SCRIPT_NAME=$(basename $0)

insertInFileSqueezeNewLines() {
    if [ $# -lt 3 ]; then
        echo -e "${SCRIPT_NAME} \e[33mfileNameHere lineNumberHere contentHere\e[0m"
        exit 1
    fi

    local fileName="$1"
    local lineNumber="$2"
    local content="$3"

    output=$(head --lines="-$lineNumber" "$fileName"; echo "$content"; tail --lines="-$lineNumber" "$fileName")
    echo $output > "$fileName"
}

insertInFileFromEnd() {
    if [ $# -lt 3 ]; then
        echo -e "${SCRIPT_NAME} \e[33mfileNameHere lineNumberFromEndHere contentHere\e[0m"
        exit 1
    fi

    local fileName="$1"
    local lineNumber="$2"
    local content="$3"

    head --lines="-$lineNumber" "$fileName" >> pleaseInsertInFile.tmp || exit 1
    echo "$content" >> pleaseInsertInFile.tmp
    tail --lines="-$lineNumber" "$fileName" >> pleaseInsertInFile.tmp || exit 1
    mv pleaseInsertInFile.tmp "$fileName"
}

insertInFileFromEnd "$@"