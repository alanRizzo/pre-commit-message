#!/bin/sh

COMMIT_REGEX=$1
GIT_COMMIT_MESSAGE_FILE=".git/COMMIT_EDITMSG"

if [[ -z "$COMMIT_REGEX" || $COMMIT_REGEX == '""' ]]; then
  echo "Regex not defined"
  exit 1
else
  COMMIT_REGEX=${COMMIT_REGEX#*=}
fi

if ! grep -iqE "$COMMIT_REGEX" "$GIT_COMMIT_MESSAGE_FILE"; then
  echo "Aborting commit. Your message does not match the regex: $COMMIT_REGEX" >&2
  exit 1
fi
