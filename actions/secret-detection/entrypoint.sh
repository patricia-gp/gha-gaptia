#!/usr/bin/env sh
set -e

detect-secrets scan > $SECRET_BASELINE_FILE

echo "---------------------------------------------------------------------------------------------------------------------------------------------"
#echo "::set-output name=output-scan::$output"
echo "output-scan=$SECRET_BASELINE_FILE" >> $GITHUB_OUTPUT
echo "---------------------------------------------------------------------------------------------------------------------------------------------"

lines=$(echo $SECRET_BASELINE_FILE | jq '.results' | wc -l)

if [ "$lines" -gt 1 ]; then
    echo "Secret Check Failed"
    exit 1
fi
