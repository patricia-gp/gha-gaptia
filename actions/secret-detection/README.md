# Secret Detection Action

This github action scans a repository using Yelp.

## Example GitHub Workflow
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

## Example local Windows Wsl2
```
sudo apt update
sudo apt install python3
sudo apt install python-is-python3
sudo apt-get install python3-pip

pip install detect-secrets==1.4.0
echo “PATH=$HOME/.local/bin:$PATH” >> ~/.profile
source ~/.profile
detect-secrets --version

# First scan
detect-secrets -v scan > .secrets.baseline
# Next scans
detect-secrets -v scan --baseline .secrets.baseline

#Audit secrets
detect-secrets audit .secrets.baseline

# Save audit
git add .secrets.baseline
git commit -m "Add .secrets.baseline"
git push
```