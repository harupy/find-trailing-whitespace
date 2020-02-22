# Find Trailing Whitespace

![Test](https://github.com/harupy/find-trailing-whitespace/workflows/Test/badge.svg?branch=master)
![tag](https://img.shields.io/github/v/tag/harupy/find-trailing-whitespace?color=green)

A GitHub Action to find trailing whitespace.

## GitHub Marketplace

[Find Trailing Whitespace](https://github.com/marketplace/actions/find-trailing-whitespace)

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
