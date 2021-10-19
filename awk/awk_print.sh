#! /bin/bash

echo "a b c" | awk "{ print \$1, \$2, \$3; }"

awk "{ print \$1, \$2, \$3; }" $(cat << EOF
a b c
EOF)