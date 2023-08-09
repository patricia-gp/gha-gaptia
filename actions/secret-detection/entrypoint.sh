#!/usr/bin/env sh
set -e

output=$(detect-secrets scan)

echo "---------------------------------------------------------------------------------------------------------------------------------------------"
echo $output
echo $output > "./.secrets.baseline"
cat "./.secrets.baseline"
echo $output >> $GITHUB_OUTPUT
echo "---------------------------------------------------------------------------------------------------------------------------------------------"

lines=$(echo $output | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Secret Check Failed"
    exit 1
fi
