#! /usr/bin/bash

cat << EOF
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

cat <<- END
			These tabs will be ignored
        but these spaces will stay
			thanks to the minus sign: -
		END

cat << EOF | sort -n
8
3
6
9
21
4
EOF

cat << EOF | sort > fruits.txt
cherry
orange
apple
pear
EOF

owner='Sarah Vigotte'

cat << EOF
$owner
*
EOF

cat << EOF
$@
EOF
