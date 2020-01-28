#!/bin/bash
if [[ ! -d ".git" ]]; then
    echo "Current directory is not a git repository"
    exit 1
fi
git clone https://github.com/rofleksey/git-hook-test.git hooks-temp && \
cp -rfa hooks-temp/hooks/. .git/hooks
rm -rf hooks-temp
echo "Hooks initialized!"
