#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
repo="$top/repos/submodules"
. "$top/lib/git.sh"

################################################################################
# Create the repo:
git_init "$repo"
git_set_author jdoe

################################################################################
# Add some notes:
cat > notes.txt <<EOF
This project has a Git Submodule in the 'other' folder.

Don't forget to initialize the submodule:

    \$ git submodule update --init

And always work on a branch while in the submodule!
EOF

################################################################################
# Commit the notes:
git add notes.txt
git commit -m "Add some notes"

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
