#!/bin/bash

stringContains() {
    if [ -z "$1" ] && [ -z "$2" ]; then
        echo "Missing haystack and needle."
        return 1
    fi

    if [[ "$1" = *$2* ]]; then
        echo "$1 contains $2"
    else
        echo "$1 does not contain $2"
    fi
}

stringContains "$1" "$2"