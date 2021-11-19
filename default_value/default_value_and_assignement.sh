#!/usr/bin/env bash

sayHello() {
    echo "For now, the end message is empty: ${endMessage}"

    local defaultName="World"
    local name=${1:-${defaultName}}
    local message=${2:-${emptyVariableToBeAssigned:-'How are you?'}}
    local endMessage=${emptyVariableToBeAssigned:='For me everything is fine'.} # here, with := we assign the emptyVariableToBeAssigned variable at the same time.

    echo "Hello ${name}!"
    echo "${message}"

    echo "And now the end message is: ${endMessage}
like the emptyVariableToBeAssigned: ${emptyVariableToBeAssigned}"
}

sayHello "$@"