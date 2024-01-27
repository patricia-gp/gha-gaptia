## Spring Sonar Action - Example usage

```
name: Spring Sonar

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the all branchs
  push:
    branches: [ "*" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/spring-sonar.yml@main
    with:
      SONAR_HOST_URL: ${{ vars.SONAR_HOST_URL }}
    secrets:
      SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}
```
