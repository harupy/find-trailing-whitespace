# Find Trailing Whitespace 

[![Test](https://github.com/harupy/find-trailing-whitespace/workflows/Test/badge.svg?branch=master&event=push)](https://github.com/harupy/find-trailing-whitespace/actions?query=workflow%3ATest+event%3Apush)
[![tag](https://img.shields.io/github/v/tag/harupy/find-trailing-whitespace?color=green)](https://github.com/harupy/find-trailing-whitespace/releases/latest)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A GitHub Action to find trailing whitespace.

## GitHub Marketplace

[Find Trailing Whitespace](https://github.com/marketplace/actions/find-trailing-whitespace)

## Example

#### Workflow

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

#### Pull Request (containing trailing whitespace)

https://github.com/harupy/find-trailing-whitespace/pull/2

## Test Locally

```bash
docker build -t test .
docker run -v $(pwd):/find-trailing-whitespace test
```
