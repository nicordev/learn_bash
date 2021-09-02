#!/usr/bin/env bash

SCRIPT_NAME=$(basename $BASH_SOURCE)
SCRIPT_DIRECTORY=$(dirname $BASH_SOURCE)

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

decrement() {
    if [ $# -lt 2 ];then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mmax count\e[0m"
    fi

    local i="$1"
    local count="$2"
    local limit=$(($i - $count))

    echo "$i - $count = $limit"

    while [ $i -gt $limit ]
    do
        echo $i
        ((i--))
    done

}

power() {
    if [ $# -lt 2 ];then
        echo -e "${SCRIPT_NAME} ${FUNCNAME[0]} \e[33mnumber power\e[0m"

        return
    fi

    echo $(($1 ** $2))
}

_listAvailableFunctions() {
    cat $0 | grep -E '^[a-z]+[a-zA-Z0-9]*\(\) \{$' | sed 's#() {$##'
}

if [ $# -eq 0 ]; then
    _listAvailableFunctions
fi

$@
