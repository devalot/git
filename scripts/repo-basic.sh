#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
. "$top/lib/git.sh"

################################################################################
repo="$top/repos/basic"

if [ "$#" -gt 0 ]; then
  repo=$1; shift
fi

################################################################################
# Create the repository:
git_init "$repo"
cp "$top/files/hello.c" main.c
git add main.c
git commit -m "Initial import of main.c" main.c

################################################################################
# Alter one of the files:
sed -i 's/return 1/return 0/' main.c
git add main.c
git commit -m "Indicate success by returning zero"

################################################################################
# Add the version number (without merge conflicts):
git branch feature
git checkout feature
git_set_author sbee

sed -i -f "$top/scripts/hello-version.sed" main.c
git add main.c
git commit -m "Add a version number"

################################################################################
# Add a newline after the version number:
sed -i 's/version %s/version %s\\n/' main.c
git_set_author sbee
git add main.c
git commit -m "Add a missing newline character"

################################################################################
# Change "hello" to "Hello World!":
git checkout master
git_set_author jdoe
sed -i 's/hello/Hello Everyone/' main.c
git add main.c
git commit -m "Add a proper greeting message"

################################################################################
# Place a tag on the feature branch as a marker for where to do merges.
git checkout feature
git_set_author sbee
git tag merge-start

################################################################################
# Back to master.
git checkout master
