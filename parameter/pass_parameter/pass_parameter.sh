#! /bin/bash

getContainerIdFromName() {
    if [ $# -lt 1 ]; then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mcontainerNameHere\e[0m"

        return 1
    fi

    docker ps --filter name="${1}" --quiet
}

getPostgresContainerId() {
    local containerId=$(getContainerIdFromName "${1}_postgres_main")

    if [ -z "$containerId" ];then
        echo "unknown container: ${1}_postgres_main"
        return 1
    fi

    echo "$containerId"
}

getPostgresContainerId "${@:-hello_world}"