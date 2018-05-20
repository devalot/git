#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
option_clone=0

################################################################################
rm -rf "$top/repos"

################################################################################
while getopts "c" o; do
  case "${o}" in
    c) option_clone=1
       ;;

    *) exit 1
       ;;
  esac
done

shift $((OPTIND-1))

################################################################################
"$SHELL" "$top/scripts/repo-basic.sh"
"$SHELL" "$top/scripts/repo-conflicts.sh"
"$SHELL" "$top/scripts/repo-submodules.sh"
"$SHELL" "$top/scripts/repo-subtrees.sh"

################################################################################
if [ "$option_clone" -eq 1 ]; then
  for repo in "$top"/repos/*.git; do
    name=$(basename "$repo")
    (cd "$top"/repos && git clone "$name")
  done
fi
