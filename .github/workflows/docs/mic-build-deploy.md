## Microservice Build & Deploy Action - Example usage

```
name: Microservice Build & Deploy

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
    secrets:
      MAVEN_USER: ${{secrets.MAVEN_USER}}
      MAVEN_TOKEN: ${{secrets.MAVEN_TOKEN}}
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/mic-build-deploy.yml@main
```
