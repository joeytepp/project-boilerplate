#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

cp ./scripts/pre-commit.bash $GIT_DIR/hooks/pre-commit
chmod +x $GIT_DIR/hooks/pre-commit
