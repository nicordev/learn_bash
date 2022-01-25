#! /bin/bash

hello() {
    echo "hello $1"
    echo "hello $2"
    echo "hello $3"
}

if [ $# -gt 1 ]
then
    hello "$@"
fi

hello bob 'sarah fraichit' jim
hello bob sarah\ fraichit jim
hello bob sarah fraichit jim
