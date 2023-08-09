#!/usr/bin/bash
set -e

output=$(cat poc-output.txt)

lines=$(echo $output | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Secret Check Failed"
    exit 1
fi
