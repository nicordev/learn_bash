#!/bin/bash

Email=me@example.com
if [[ "$Email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]
then
    echo "Valid email!"
    echo "Here is the first capturing group: ${BASH_REMATCH[1]}"
fi
