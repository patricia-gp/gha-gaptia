## Web Build & Deploy Action - Example usage

```
name: Web Build & Deploy

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:

 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/web-build-deploy.yml@main
```
