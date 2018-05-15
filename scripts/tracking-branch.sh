#!/bin/sh

################################################################################
# Dump out some info about tracking branches:
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
. "$top/lib/exec-helper.sh"

################################################################################
tmp_clone "basic.git"

case "${1:-checkout}" in
  checkout)
    dollar git branch --all
    dollar git checkout feature
    ;;

  manual)
    dollar git checkout -b ft origin/feature
    ;;

  get)
    dollar git branch -vv
    ;;

  set)
    dollar git branch -u origin/master
    ;;

  *)
    echo "bad command: $1"
    exit 1
    ;;
esac
