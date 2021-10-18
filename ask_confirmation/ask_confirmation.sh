#!/usr/bin/env bash

# Using read: https://www.computerhope.com/unix/bash/read.htm
# -p show a prompt
# -r use "raw input". Specifically, this option causes read to interpret backslashes literally, rather than interpreting them as escape characters.

askConfirmationDefaultYes() {
    echo -e "\e[1mContinue?\e[0m [YES/no] "
    read answer

    if [[ ${answer,,} =~ ^n ]]; then
        echo "no"

        return 1
    fi

    echo "yes"

    return 0
}

askConfirmationDefaultNo() {
    echo -e "\e[1mContinue?\e[0m [yes/NO] "
    read answer

    if [[ ${answer,,} =~ ^(y|yes)$ ]]; then
        echo "yes"

        return 0
    fi

    echo "no"

    return 1
}

while true; do
    echo "Hello world!"
    askConfirmationDefaultYes || break
done

while true; do
    echo "Hello us!"
    askConfirmationDefaultNo || exit
done
