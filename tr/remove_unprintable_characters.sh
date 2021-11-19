#! /bin/bash

cleanFile() {
    local file_with_binary_characters="$1"
    local clean_file="$2"
    tr -cd '\11\12\15\40-\176' < $file_with_binary_characters > $clean_file
}

# https://stackoverflow.org/wiki/Remove_unprintable_characters_from_a_file
demo() {
    echo -e "hello \r\nWorld\xd" | tr -cd '\11\12\15\40-\176'
}

# https://www.gnu.org/software/sed/manual/html_node/Character-Classes-and-Bracket-Expressions.html
demoUsingPrintClass() {
    echo -e "hello \r\nWorld\xd" | tr -cd '[:print:]'
}

"$@"