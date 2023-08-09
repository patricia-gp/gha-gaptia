## Secret Dection Action - Example usage

```
name: Secret Detection

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]
  pull_request:
    branches: [ "main", "develop" ]
    types: [ "opened", "reopened", "ready_for_review", "synchronize" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:

 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/secret-detection.yml@main
```
