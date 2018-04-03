#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
tmp_home=$(mktemp -d "${TMPDIR:-/tmp}/gitsh.XXXXXXXXXX")

################################################################################
export HOME=$tmp_home

################################################################################
git_cleanup_temp() {
  if [ -e "$tmp_home" ]; then
    rm -r "$tmp_home"
  fi
}

################################################################################
git_set_author() {
  file="$top/etc/git-config-$1.conf"
  cp "$file" "$tmp_home/.gitconfig"
}

################################################################################
git_init() {
  directory=$1; shift

  if [ -e "$directory" ]; then
    >&2 echo "repository already exists: $directory"
    exit 1
  fi

  mkdir -p "$directory"
  cd "$directory"
  git init
}

################################################################################
trap git_cleanup_temp EXIT
git_set_author "jdoe"
