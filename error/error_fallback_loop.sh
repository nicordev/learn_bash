#!/bin/bash

brokenFunction() {
    if (( $1 % $2 == 0 ))
    then
        return 1
    fi
    echo "ok."
}

for i in {0..20}
do
    brokenFunction $i 3 || echo "error"
done
