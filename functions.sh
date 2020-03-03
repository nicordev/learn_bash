#!/bin/bash

sayHelloTo() {
    echo "Hello $1!"
}

sayHelloTo "Bob"

# Scope

localVariableDemo() {
    local nameAsLocalVariable="Sarah"
    nameAsGlobalVariable="Jean"

    sayHelloTo $nameAsLocalVariable
    sayHelloTo $nameAsGlobalVariable
    sayHelloTo $anotherNameAsGlobalVariable
}

anotherNameAsGlobalVariable="Jim"

localVariableDemo
sayHelloTo $nameAsLocalVariable # $nameAsLocalVariable is now empty because called outside of its scope.