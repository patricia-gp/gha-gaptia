#!/usr/bin/env sh
set -e

FILE='.secrets.baseline'

if [ ! -f $FILE ]; then
  echo -e "Not found file $FILE, scanning repository..."
  detect-secrets -v scan > $FILE
else
  echo -e "Found file $FILE, scanning repository..."
  detect-secrets -v scan --baseline $FILE
fi

echo '--'
AUDIT=$(printf 'q' | detect-secrets audit $FILE)

if [[ "$AUDIT" == "Nothing to audit!" ]]; then

  SECRETS_NUMBER=$(ls | grep -c '"is_secret": true' $FILE || true)

  if [[ $SECRETS_NUMBER -gt 0 ]]; then
    grep -B 5 '"is_secret": true' $FILE
    echo -e "\e[91mError: $SECRETS_NUMBER secrets not should be committed!\e[0m" && exit 1
  else
    echo -e "\e[92mInfo: Nothing to audit!\e[0m" && exit 0
  fi

else
  echo -e "\e[91mError: Secrets pending audit have been scanned!\e[0m" && exit 1
fi

