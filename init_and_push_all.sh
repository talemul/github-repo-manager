#!/bin/bash

# Set your GitHub username or organization
gh_owner="your-github-username"

# List of local directories to process
repos=(your-folder-1 your-folder-2 your-folder-3)

# Loop through each folder
for repo in "${repos[@]}"; do
  echo "📁 Processing '$repo'..."

  cd "$repo" 2>/dev/null || { echo "  – Directory '$repo' not found, skipping."; continue; }

  if [ ! -d .git ]; then
    git init
  fi

  if ! gh repo view "$gh_owner/$repo" >/dev/null 2>&1; then
    echo "  – GitHub repo not found, creating..."
    gh repo create "$gh_owner/$repo" --public --source=. --remote=origin --push
    cd ..
    echo "✅ '$repo' created and pushed."
    echo "------------------------"
    continue
  fi

  git add .
  git commit -m "first commit" 2>/dev/null || echo "  – No new changes to commit."
  git branch -M main
  git remote remove origin 2>/dev/null || true
  git remote add origin "https://github.com/$gh_owner/$repo.git"
  git push -u origin main

  cd ..
  echo "✅ '$repo' pushed."
  echo "------------------------"
done