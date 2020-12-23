#!/usr/bin/env bash

fetchArguments() {
	arguments=()
	filter=''

	for argument in $@; do
		if [[ $argument =~ ^--filter\=([a-zA-Z0-9\.]*) ]]; then
			filter="${BASH_REMATCH[1]}"
			continue
		fi

		arguments+=($argument)
	done
}

if [ $# -eq 0 ]; then
    echo "Please, can you give me some arguments?"
    exit
fi

fetchArguments $@

echo "Useful arguments are: ${arguments[@]}"
echo "Filter is: $filter"