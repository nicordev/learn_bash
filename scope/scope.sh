#!/usr/bin/env bash

# Change directory without changing directory for the whole script thanks to the parentheses

pwd

(
    cd /etc
    pwd
)

pwd
