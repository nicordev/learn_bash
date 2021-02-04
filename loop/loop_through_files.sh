#! /bin/bash

loopThroughFiles() {
    folder="$1"
    ls "${folder}" | while read -r file; do
        [[ "$file" =~ ^([0-9-]{3})([0-9]{4}_)bulletin_(de_paie) ]]
        echo ${BASH_REMATCH[@]}
    done
}

renameFiles() {
    ls . | while read -r file; do
        if _captureDateDigits $file
        then
            renamedFileName="${BASH_REMATCH[2]}-${BASH_REMATCH[1]}_${BASH_REMATCH[3]}"
            echo ${file} ${renamedFileName}
        fi
    done
}

loopThroughFiles $(pwd)
