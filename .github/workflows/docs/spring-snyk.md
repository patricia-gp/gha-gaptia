## Spring Snyk Action - Example usage

```
name: Spring Snyk

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the all branchs
  push:
    branches: [ "*" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/spring-snyk.yml@main
    secrets:
      SNYK_TOKEN: ${{ secrets.SNYK_TOKEN }}
```
