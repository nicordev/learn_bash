#!/usr/bin/env bash

sayHello() {
    local defaultValue="World"
    local name=${1:-${defaultValue}}
    local message=${2:-'How are you?'}

    echo "Hello ${name}!"
    echo "${message}"
}

sayHello "$1"