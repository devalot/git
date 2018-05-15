#!/bin/sh

################################################################################
set -e
set -u
set -x

################################################################################
top=$(realpath "$(dirname "$0")/..")
repo="$top/repos/submodules"
. "$top/lib/git.sh"

################################################################################
# Create the repo:
git_init "$repo"
git_set_author jdoe

################################################################################
# Add a submodule:
git submodule add ../basic.git other

################################################################################
# Lock to the previous commit:
(cd other && git reset --hard HEAD^)

################################################################################
# Commit our change:
git add other
git commit -m "Add submodule"

################################################################################
# Make the submodule look freshly cloned:
git submodule deinit --all
git submodule update --init
