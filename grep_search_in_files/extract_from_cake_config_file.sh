#!/usr/bin/env bash

getConfigurationValue() {
    if [ $# -lt 2 ]; then
        echo -e "$(basename $0) \e[33mfileHere settingHere\e[0m"
        exit 1
    fi

    local file="$1"
    local setting="$2"

    cat "$file" | sed --quiet "s/Configure::write([\"']${setting}[\"'], [\"']*\([a-zA-Z0-9_-]*\)[\"']*);$/\1/p"
}

getConfigurationValue "$@"
