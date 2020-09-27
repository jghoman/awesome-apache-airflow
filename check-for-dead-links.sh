#!/usr/bin/env bash
set -e # Bail early
#set -x # Very verbose

if command -v markdown-link-check; then
  CMD=markdown-link-check
elif test -f "./node_modules/.bin/markdown-link-check"; then
  CMD="./node_modules/.bin/markdown-link-check"
else
  echo "Installing markdown-link-check in local directory..."
  npm install --save-dev markdown-link-check
  CMD="./node_modules/.bin/markdown-link-check"
fi

eval $CMD -c check-for-dead-links-config.json -p -q README.md