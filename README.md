# Find Trailing Whitespace

A GitHub Action to find trailing whitespace.

## Run locally

```bash
docker build -t test .
docker run -v $(pwd):/$(basename $(pwd)) test
```
