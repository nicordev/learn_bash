#! /bin/sh

tryRegex() {
    local statusCode=400

    if ! echo $statusCode | grep --quiet '^2'
    then
        return 1
    fi

    return 0
}

tryRegex || echo "error"