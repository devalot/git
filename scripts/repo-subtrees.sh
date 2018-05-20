#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
base_repo="$top/repos/treebase"
tree_repo="$top/repos/subtrees"
. "$top/lib/git.sh"

################################################################################
# Create the base repo:
( repo="$base_repo"
  . "$top"/scripts/repo-basic.sh
)

################################################################################
# Create the repo:
git_init "$tree_repo"
git_set_author jdoe

################################################################################
# Add some notes:
cat > notes.txt <<EOF
This project has a Git Subtree in the 'other' folder.

To make it easier to push to the subtree's upstream add a remote:

    \$ git remote add upstream ../$(basename "$base_repo").git

Then push:

    \$ git subtree push -P other upstream master
EOF

################################################################################
# Commit the notes:
git add notes.txt
git commit -m "Add some notes"

################################################################################
# Add the subtree:
git subtree add -P other ../"$(basename "$base_repo")".git master
