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
. "$top"/scripts/repo-basic.sh

################################################################################
# Add a conflicting change:
git checkout feature
git_set_author sbee

sed -i -f "$top/scripts/hello-print-version.sed" main.c
sed -i -e 's/hello/Hello World!/' -e 's/1\.0/1.1/' main.c
git add main.c
git commit -m "Print the version number, fix greeting"

################################################################################
# Add a tag to get back to this point.
git tag conflict-start

################################################################################
# Go back to master.
git checkout master
