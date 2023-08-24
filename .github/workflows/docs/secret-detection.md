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
    env:
      MAVEN_USER: ${{secrets.MAVEN_USER}}
      MAVEN_TOKEN: ${{secrets.MAVEN_TOKEN}}
      GITHUB_TOKEN: ${{secrets.GITHUB_TOKEN}}
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/secret-detection.yml@main
```
