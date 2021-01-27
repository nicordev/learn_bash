#/usr/bin/env bash


# echo $functionNames

# Use a list of words
# complete -W "helloWorld hi" ./please_say_hi

# Use a function

getFunctionName() {
    functionNames=$(./please_say_hi | awk 1 ORS=' ')

    for functionName in ${functionNames}; do
        COMPREPLY+=("$functionName")
    done
}

complete -F getFunctionName ./please_say_hi