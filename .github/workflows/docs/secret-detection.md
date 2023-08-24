## Secret Detection Action - Example usage

```
name: Secret Detection

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/common/secret-detection.yml@main
```
