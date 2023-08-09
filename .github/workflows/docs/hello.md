## Hello Action - Example usage

```
# This is a basic workflow to help you get started with Actions

name: Hello

# Controls when the workflow will run
on:
  # Triggers the workflow on push or pull request events but only for the "main" branch
  push:
    branches: [ "main", "develop" ]
  pull_request:
    branches: [ "main", "develop" ]
    
  # Allows you to run this workflow manually from the Actions tab
  workflow_dispatch:
  
# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:

 build:
    uses: patricia-gp/gha-gaptia/.github/workflows/hello.yml@main
```