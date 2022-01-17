#! /bin/bash

SCRIPT_NAME=$(basename $0)

readEnvFile() {
    if [ $# -lt 2 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33menvFileHere variableNameHere\e[0m"

        return 1
    fi

    cat "$1" | sed --quiet "s/^$2=\([^\n#]*\).*/\1/p" | sed "s/[\"']//g"
}

if [ $# -lt 1 ]; then
    echo -e "${SCRIPT_NAME} readEnvFile \e[33menvFileHere variableNameHere\e[0m"

    exit
fi

"$@"
