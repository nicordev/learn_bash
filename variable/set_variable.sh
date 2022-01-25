#! /bin/bash

readonly SCRIPT_NAME=$(basename $0)
readonly GREETING_WORD="${GREETING_WORD:-hello}"

greet() {
    if [ -z "$FIRST_NAME" ]
    then
        printf "
variable FIRST_NAME is empty.

try again like so:
FIRST_NAME=\e[33manyNameHere\e[0m ./$SCRIPT_NAME
"
        return
    fi

    echo "$GREETING_WORD $FIRST_NAME $LAST_NAME!"
}

greet

# Try FRUIT=anyStringHere ./set_variable.sh
FRUIT=${FRUIT:-'apple'}

echo "I like $FRUIT"