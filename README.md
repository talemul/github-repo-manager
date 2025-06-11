# GitHub Repo Manager

This project provides a Bash script to automate the initialization, local commit, and remote push of multiple GitHub repositories. It also automatically creates GitHub repositories if they don't already exist using the GitHub CLI.

## 🔧 Features

- Initializes a Git repository in each project folder.
- Commits the code (if not already committed).
- Creates a remote GitHub repository (if missing).
- Pushes the code to the `main` branch.
- Fully automates multi-repo setup for teams and solo devs.

## 🧰 Requirements

- [Git](https://git-scm.com/)
- [GitHub CLI](https://cli.github.com/)
  - Run `gh auth login` once to authenticate with GitHub.

## 📂 Setup

1. Clone this repository:
   ```bash
   git clone https://github.com/talemul/github-repo-manager.git
   ```

2. Place your Laravel packages or other projects in the same directory.

3. Modify the `repos` array in `init_and_push_all.sh` with your folder names.

## ▶️ Usage

Run the script using Git Bash:

```bash
bash init_and_push_all.sh
```

Each listed project will be:
- Initialized with Git
- Committed if there are changes
- Pushed to a new GitHub repository (if one doesn't exist)

## 📝 License

MIT License


## 📥 Additional Script: clone_all.sh

This script helps you clone multiple GitHub repositories into a specified directory.

### ▶️ Usage

1. Update the `gh_owner` and `repos` variables in `clone_all.sh`.
2. Run:
   ```bash
   bash clone_all.sh
   ```

All repositories will be cloned into the `super-admin-ext` directory.
