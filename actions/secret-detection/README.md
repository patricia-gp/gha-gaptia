# Secret Detection Action

This github action scans a repository using Yelp.

## Example GitHub workflow
```
name: Secret Detection

on:
  workflow_call:

jobs:
  secret:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repo ${{ github.repository }} Brach ${{ github.ref }}
        uses: actions/checkout@v3.5.3
        with:
          fetch-depth: 0

      - name: Scan secrets with Yelp
        uses: patricia-gp/gha-gaptia/actions/secret-detection@main
  
pip install detect-secrets
```

## Example local WSL2
```
sudo apt update
sudo apt install python3
sudo apt install python-is-python3
sudo apt-get install python3-pip

pip install detect-secrets
echo “PATH=$HOME/.local/bin:$PATH” >> ~/.profile
source ~/.profile
detect-secrets --version

detect-secrets scan > .secrets.baseline
detect-secrets audit .secrets.baseline
```