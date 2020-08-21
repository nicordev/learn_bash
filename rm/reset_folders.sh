#!/bin/bash

rm -rf ./folders

mkdir ./folders

for((i=0;i<5;i++)); do
    mkdir "./folders/folder$i"

    for((j=0;j<3;j++)); do
        touch "./folders/folder$i/file$j"
    done
done

echo "Done."
