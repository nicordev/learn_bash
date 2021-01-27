#/usr/bin/env bash

# From https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial
#
# Source this file after each modification

# Use a list of words
# complete -W "helloWorld hi" ./please_say_hi

# Use a function
getFunctionName() {
    functionNames=$(./please_say_hi | awk 1 ORS=' ')
    COMPREPLY=($(compgen -W "$functionNames" -- "${COMP_WORDS[1]}"))
}

complete -F getFunctionName ./please_say_hi