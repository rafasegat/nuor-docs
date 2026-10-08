#!/bin/bash
# Double-click to commit and push all changes.
cd "$(dirname "$0")" || exit 1

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to commit."
else
  git add -A
  git commit -m "$(date '+%Y-%m-%d %H:%M:%S')" || { read -r -p "Commit failed. Press Enter to close."; exit 1; }
fi

git push || echo "Push failed."

echo
read -r -p "Done. Press Enter to close."
