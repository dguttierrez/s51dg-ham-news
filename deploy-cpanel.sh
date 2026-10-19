#!/usr/bin/env bash
set -euo pipefail
# Edit these paths to match your cPanel account.
REPO="$HOME/repos/s51dg-ham-news"
WEBROOT="$HOME/public_html/ham"
cd "$REPO"
git pull --ff-only origin main
mkdir -p "$WEBROOT"/{assets,archive,news}
rsync -a --delete "$REPO/assets/" "$WEBROOT/assets/"
rsync -a --delete "$REPO/archive/" "$WEBROOT/archive/"
rsync -a --delete "$REPO/news/" "$WEBROOT/news/"
install -m 0644 "$REPO/index.html" "$WEBROOT/index.html"
