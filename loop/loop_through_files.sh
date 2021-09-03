#! /bin/bash

loopThroughFiles() {
    directory="$1"

    shopt -s nullglob
    for file in "$directory"/*; do
        echo $file
    done
}

loopThroughFiles '.'

echo '
Full path:'
loopThroughFiles $(pwd)

echo '
One liner:'
for file in *; do echo "$file"; done