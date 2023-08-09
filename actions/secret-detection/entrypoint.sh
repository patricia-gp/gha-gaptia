#!/usr/bin/env sh
set -e

output=$(detect-secrets scan)

echo "output-scan:$output" >> $GITHUB_OUTPUT

lines=$(echo $output | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Secret Check Failed"
    exit 1
fi
