#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./scripts/sync_content.sh [CONTENT_REPO_GIT_URL] [BRANCH]
#
# Defaults assume GitHub SSH and the repos mentioned in this workspace.

CONTENT_REPO_GIT_URL=${1:-git@github.com:Zilong-L/notes_content.git}
BRANCH=${2:-main}

WORKDIR="__notes_content"

if [ ! -d "$WORKDIR/.git" ]; then
  git clone "$CONTENT_REPO_GIT_URL" "$WORKDIR"
fi

git -C "$WORKDIR" fetch origin

git -C "$WORKDIR" checkout "$BRANCH" >/dev/null 2>&1 || git -C "$WORKDIR" checkout -b "$BRANCH" "origin/$BRANCH"

git -C "$WORKDIR" pull --ff-only origin "$BRANCH"

if [ ! -d "$WORKDIR/content" ]; then
  echo "ERROR: $WORKDIR/content does not exist. notes_content should have a top-level content/ directory." >&2
  exit 1
fi

mkdir -p content
rsync -a --delete "$WORKDIR/content/" content/

echo "Synced content from $CONTENT_REPO_GIT_URL ($BRANCH)"
