#!/bin/sh
# Publish portfolio to GitHub Pages using Git and optionally GitHub CLI.
cd "$(dirname "$0")"

if ! command -v git >/dev/null 2>&1; then
  echo "Git is not installed or not in PATH. Install it from https://git-scm.com/."
  exit 1
fi

git init
git branch -M main
git add .
git commit -m "Initial portfolio"

echo "If you have GitHub CLI installed, create and push the repo automatically."
if command -v gh >/dev/null 2>&1; then
  gh auth login
  gh repo create mayibongwe-portfolio --public --source=. --remote=origin --push
else
  echo "GitHub CLI not found."
  echo "Create a new repository on GitHub, then run:"
  echo "git remote add origin https://github.com/<your-username>/mayibongwe-portfolio.git"
  echo "git push -u origin main"
fi

echo "Published. Then enable GitHub Pages in repository Settings → Pages."
