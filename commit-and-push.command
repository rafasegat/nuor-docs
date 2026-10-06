#!/bin/bash
# Double-click to commit and push all changes.
cd "$(dirname "$0")" || exit 1

if [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to commit."
else
  git add -A
  read -r -p "Commit message (leave empty for auto): " msg
  [ -z "$msg" ] && msg="Update docs $(date '+%Y-%m-%d %H:%M')"
  git commit -m "$msg" || { read -r -p "Commit failed. Press Enter to close."; exit 1; }
fi

git push || echo "Push failed."

echo
read -r -p "Done. Press Enter to close."
