#! /bin/bash

appendToFileEnd() {
    if [ $# -lt 2 ]; then
        echo 'fileName contentToAppend'

        return 1
    fi

    sed '$a\'"$2" "$1"
}

appendToFileEnd ../sed-demo.txt 'hello world'