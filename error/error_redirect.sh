#!/bin/bash

brokenFunction() {
    echo "hello world!"
    ls unknownFile
}

brokenFunction > output.txt 2> error.txt

printf "\e[1;33mError\e[0m
$(cat error.txt)

\e[1;32mOutput\e[0m
$(cat output.txt)
"

rm error.txt output.txt