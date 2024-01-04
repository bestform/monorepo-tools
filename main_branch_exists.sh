#!/usr/bin/env bash

main_branch_exists() {
  git ls-remote --heads "$1" "main" | grep -q "main"
}

if main_branch_exists "$1"; then
  exit 1
fi

exit 0