#! /bin/bash

while read -p "Step : " && [[ $REPLY != q ]]; do
    case $REPLY in
        1) echo step1; break;;
        2) echo step2; break;;
        *) echo "Try again."; failure=1; break;;
    esac
done