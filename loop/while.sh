#! /bin/bash

_askConfirmationDefaultYes() {
    echo -e "\e[1mContinue?\e[0m [YES/no] "
    read answer

    if [[ ${answer,,} =~ ^n ]]; then
        return 1
    fi
}

getRandomParagraphs() {
    curl --request GET "https://loripsum.net/api" --header  "accept: text/plain"
}

