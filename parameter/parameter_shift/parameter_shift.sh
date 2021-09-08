#! /bin/bash

i=0

showParameters() {
    echo "$i"
    ((i++))
    echo "$@"
    shift
    echo "$@"
    $@
}

$@