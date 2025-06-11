#!/bin/bash

# Set your GitHub username or organization
gh_owner="your-github-username"

# List of repositories to clone
repos=(your-repo-1 your-repo-2 your-repo-3)

# Target directory
mkdir -p super-admin-ext
cd super-admin-ext || exit

# Clone each repository
for repo in "${repos[@]}"; do
  echo "Cloning $repo..."
  git clone "https://github.com/$gh_owner/$repo.git"
  echo "$repo cloned."
  echo "----------------------"
done