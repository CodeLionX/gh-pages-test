#!/usr/bin/env bash

if [ -z "$1" ]; then
    echo "No markdown file given. Usage: $0 File.md"
fi

# sanitize variable and statement expressions of liquid
sed -i 's/{{/{ {/g' "$1"
sed -i 's/}}/} }/g' "$1"
sed -i 's/{%/{ %/g' "$1"
sed -i 's/%}/% }/g' "$1"

# remove additional newlines
sed -i -e '/./b' -e :n -e 'N;s/\n$//;tn' "$1"
