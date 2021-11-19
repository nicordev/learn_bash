#! /bin/bash

echo "zog
zog
hello
world" | paste -sd ","

fold() {
    echo "$1" | paste -sd "${2:- }"
}


fold "apple
orange
banana
peach"

fold "apple
orange
banana
peach" ":,@"