#!/bin/bash

sayHello() {
    echo "Hello $@!"
}

parameterHandler='sayHello'

# Execute parameterHandler on each parameter then remove the parameter
handleParameters() {

    while [ ! -z "$1" ]; do
        $parameterHandler "$1"
        shift
    done
}

handleParameters "$@"
