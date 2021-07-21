#! /bin/bash

extractFileNameUsingParameterSubstitution() {
    echo ${@##*/}
}

extractFileNameUsingSed() {
    echo "$@" | sed "s#.*/##"
}

extractFilenameUsingRegex() {
    if [[ "$1" =~ ([^/]+)$ ]]
    then
        echo "${BASH_REMATCH[1]}"
    fi
}

_captureFilename() {
    [[ "$1" =~ ([^/]+)$ ]]
    filename="${BASH_REMATCH[1]}"
}

if [ $# -lt 2 ]; then
    _captureFilename $1
    echo $filename
    exit
fi

$@
