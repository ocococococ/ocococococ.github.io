#!/usr/bin/env bash
# https://stackoverflow.com/questions/1657017/how-to-squash-all-git-commits-into-one
git reset "$(git commit-tree "HEAD^{tree}" -m "RSS")"
git push -f
