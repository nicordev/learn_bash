#!/usr/bin/env bash

setDatabase() {
    # sed "0,/'database'[ ]*=>.*/{s/'database'[ ]*=>.*/'database' => '$1',/}" "./zog"
    sed "0,/'database'[ ]*=>.*/ {s#'database'[ ]*=>.*#'database' => '$1',#}" "./zog"
}

setDatabase hello