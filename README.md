## Commit message pre-commit hook
If the message does not match the regex this hook will show it.

## Install

```bash
pre-commit install --hook-type commit-msg
```

Add the following lines in your **.pre-commit-config.yaml** file.

```yaml
  - repo: https://github.com/alanRizzo/pre-commit-message
    rev: REV_NUMBER
    hooks:
      - id: commit-message
        stages: [commit-msg]
        args:
          - --commit-regex=YOUR_REGEX
```
