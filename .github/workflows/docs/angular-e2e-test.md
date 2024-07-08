## Angular E2E Action - Example usage

```
# This is a basic workflow to help you get started with Actions

name: Angular Build

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/angular-e2e-test.yml@main
```
