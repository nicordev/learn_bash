#!/usr/bin/env bash

demoIncrement() {
    i=0

    until [ $i -gt 3 ]
    do
        echo $i
        ((i++))
    done

    echo $i

    ((i += 1))

    echo $i

    let "i = i + 1"

    echo $i
}

_listAvailableFunctions() {
    cat $0 | grep -E '^[a-z]+[a-zA-Z0-9]*\(\) \{$' | sed 's#() {$##'
}

if [ $# -eq 0 ]; then
    _listAvailableFunctions
fi

$@
