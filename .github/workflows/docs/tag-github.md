## Tag Generate Action - Example usage

```
name: Tag Generate

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" or "develop" branch
  push:
    branches: [ "main", "develop" ]

  # Allows you to run this workflow manually from the Actions tab
  workflow_call:
  
jobs:
 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/api-tag-generate.yml@main
```
