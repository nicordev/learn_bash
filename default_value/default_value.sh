#!/usr/bin/env bash

sayHello() {
    local defaultName="World"
    local name=${1:-${defaultName}}
    local message=${2:-${defaultMessage:-How are you?}}

    echo "Hello ${name}!"
    echo "${message}"
}

sayHello "$1"