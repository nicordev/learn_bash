#!/usr/bin/env bash

function countFile() {
    ls | grep "$@" | wc --lines
}

function countTemporaryFile() {
    echo "$(countFile myTemporaryFile) temporary file"
}

function createTemporaryFile() {
    echo -e "\ncreating temporary file..."
    touch myTemporaryFile
}

function deleteTemporaryFile() {
    echo "deleting temporary file..."
    rm myTemporaryFile
}

function handleExit() {
    echo "last code: $?" # last code returned, maximum 195, could come from an exit or a return
    echo "parameters: $@" # no parameter passed to the function
    deleteTemporaryFile
    countTemporaryFile
    echo "Bye!"
}

function brokenFunction() {
    return 43
}

printf "\nSignal list:\n"
trap -l

printf "\nSetting traps...\n"
trap deleteTemporaryFile exit
trap countTemporaryFile exit
trap handleExit exit # only the last trap will be executed on exit
trap # show each trap set by signal

createTemporaryFile
countTemporaryFile
sleep 3

printf "\nExiting...\n"
# exit 195
brokenFunction
