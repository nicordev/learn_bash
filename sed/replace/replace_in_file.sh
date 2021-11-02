#! /bin/bash

replaceInFile() {
    if [ $# -lt 1 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mfileName stringToReplace replacement\e[0m"

        return 1
    fi

    local file="$1"
    local stringToReplace=$(echo "$2" | sed 's/#/\\#/')
    local replacement=$(echo "$3" | sed 's/#/\\#/')

    sed "s#$stringToReplace#$replacement#" "$file"
    sed -i "s#$stringToReplace#$replacement#" "$file"
}

"$@"