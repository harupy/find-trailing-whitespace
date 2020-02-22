# Find Trailing Whitespace

A GitHub Action to find trailing whitespace.

## Example Workflow

```yaml
name: Example

on: pull_request

jobs:
  example:
    name: Find Trailing Whitespace
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: harupy/find-trailing-whitespace@master
```

## Test Locally

```bash
docker build -t test .
docker run -v $(pwd):/$(basename $(pwd)) test
```
