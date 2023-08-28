## Microservice Spring Snyk Action - Example usage

```
name: Microservice Spring Snyk

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/mic-spring-snyk.yml@main
    secrets:
      SNYK_TOKEN:
        required: true
```