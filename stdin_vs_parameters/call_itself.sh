#! /bin/bash

if [ $# -eq 0 ];then
    $0 "Hello World!"
    exit
fi

echo $1