#! /bin/bash

# ANSI-C quoting: https://www.gnu.org/software/bash/manual/html_node/ANSI_002dC-Quoting.html
echo "$@" | sed $'s/[^[:print:]\t]//g'