#!/bin/bash

fruits="apple cherry peach"
customers="bob jim sarah lenny"

i=0

for fruit in $fruits; do
    j=0

    echo $i $fruit

    for customer in $customers; do

        if (( $i == $j )); then
            echo - $customer
        fi

        ((j++))
    done

    ((i++))
done