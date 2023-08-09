#!/usr/bin/env sh
set -e

file='.secrets.baseline'
detect-secrets scan > $file

echo "---------------------------------------------------------------------------------------------------------------------------------------------"
cat $file
echo "---------------------------------------------------------------------------------------------------------------------------------------------"

lines=$(cat $file | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo -e "\e[91mError: There are hardcoded secrets and they must be removed\e[0m" && exit 1
fi
