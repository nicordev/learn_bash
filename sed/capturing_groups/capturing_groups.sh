#! /bin/bash

tryGroups() {
    cat << EOF | sed --quiet --regexp-extended 's#^([a-z]+):$#\1#p'
fruits:
apple, peach, pear, orange, banana

customers:
sarah, jean, jim, marie
EOF
}

tryGroups