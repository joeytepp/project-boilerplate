#!/usr/bin/env bash

set -e

cd "${0%/*}/.."

echo 'Running rubocop on staged files'
git diff --staged --name-only | xargs ls -1 2>/dev/null | grep \.rb$ | xargs bundle exec rubocop -a
