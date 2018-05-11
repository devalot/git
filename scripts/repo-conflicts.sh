#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
. "$top/lib/git.sh"

################################################################################
repo="$top/repos/conflicts"

################################################################################
# Bootstrap the repo:
"$SHELL" "$top"/scripts/repo-basic.sh "$repo"
cd "$repo"

################################################################################
# Add a conflicting change:
git checkout feature
git_set_author sbee

sed -i -f "$top/scripts/hello-print-version.sed" main.c
sed -i 's/hello/Hello World!/' main.c
git add main.c
git commit -m "Print the version number, fix greeting"

################################################################################
# Go back to master.
git checkout master
