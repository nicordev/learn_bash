#!/bin/bash

askFruit() {
    echo "Which fruit do you need?"
    PS3='Select a fruit: '

    select fruit in apple peach cherry raspbery 'another one which is not in this list' 'i want to quit.'
    do
        if [ "$fruit" == 'i want to quit.' ]; then
            return
        fi
        echo "You chose $fruit."
    done
}

askOS() {
    echo "Which Operating System do you like?"
    PS3='Select an OS: '

    # Operating system names are used here as a data source
    select os in Ubuntu LinuxMint MacOS ChromeOS Windows
    do
        case $os in
        # Two case values are declared here for matching
        "Ubuntu" | "LinuxMint")
        echo "I also use $os."
        ;;
        # Three case values are declared here for matching
        "MacOS" | "ChromeOS" | "Windows")
        echo "Why don't you try Linux?"
        ;;
        # Matching with invalid data
        *)
        echo "Invalid entry."
        break
        ;;
        esac
    done
}

askFruit
askOS