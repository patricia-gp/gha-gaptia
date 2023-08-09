#!/usr/bin/env sh
set -e

detect-secrets scan > .secrets.baseline

echo "---------------------------------------------------------------------------------------------------------------------------------------------"
output=$(cat .secrets.baseline)
echo $output
echo "---------------------------------------------------------------------------------------------------------------------------------------------"

lines=$(echo $output | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Error: There are hardcoded secrets and they must be removed" && exit 1
fi
