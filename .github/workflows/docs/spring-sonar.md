## Spring Sonar Action - Example usage

```
name: Spring Sonar

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/mic-spring-sonar.yml@main
    inputs:
      SONAR_HOST_URL:
        type: string
        required: true
    secrets:
      SONAR_TOKEN:
        required: true
```
