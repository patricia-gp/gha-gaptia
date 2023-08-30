## Spring Instance Aws Action - Example usage

```
# This is a basic workflow to help you get started with Actions

name: Spring Instance Aws

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/spring-instance-aws.yml@main
    with:      
      AWS_REGION: ${{ vars.AWS_REGION }}
      AWS_APP_NAME: ${{ vars.AWS_APP_NAME }}
      AWS_APP_ENVIRONMENT: ${{ vars.AWS_APP_ENVIRONMENT }}
      AWS_ECR_REPOSITORY: ${{ vars.AWS_ECR_REPOSITORY }}
    secrets:
      AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
      AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```
