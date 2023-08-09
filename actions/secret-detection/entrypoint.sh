#!/usr/bin/env sh
set -e

detect-secrets scan > .secrets.baseline

echo "---------------------------------------------------------------------------------------------------------------------------------------------"
cat .secrets.baseline
echo "---------------------------------------------------------------------------------------------------------------------------------------------"

lines=$(cat .secrets.baseline | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Secret Check Failed"
    exit 1
fi
