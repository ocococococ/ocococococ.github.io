#!/usr/bin/env bash
cd -- "$(dirname -- "${BASH_SOURCE[0]}")" || exit 1
ROOT=$(dirname -- "${PWD}")
DOCS=${ROOT}/docs

RSS=${DOCS}/rss
curl -s -o "${RSS}/overload.xml" 'http://localhost:8888/tempo/overload/rss.php'

# check for changes
if [[ -n "$(git status --porcelain)" ]]; then
  git add -A
  git commit -m 'Upgrade RSS'
  git push
fi
