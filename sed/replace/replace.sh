#!/usr/bin/env bash

setDatabase() {
    sed "s/'database'[ ]*=>.*/'database' => '$1',/" "./zog"
}

setDatabase hello