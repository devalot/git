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
  # Push all branches back to origin:
  for branch in .git/refs/heads/*; do
    branch=$(basename "$branch")
    git checkout "$branch"
    git push origin "$branch"
  done

  # Push all tags too:
  git push --tags

  # Remove the non-bare repo:
  name=$(basename "$(pwd)")
  cd ..

  if [ "$(basename "$(pwd)")" != "repos" ]; then
    >&2 echo "BUG: tried to escape the repos dir!"
    exit 1
  fi

  rm -rf "$name"

  # Remove the temporary home directory:
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
  bare="$directory".git

  if [ -e "$bare" ] || [ -e "$directory" ]; then
    >&2 echo "repository already exists: $bare"
    exit 1
  fi

  mkdir -p "$bare"
  cd "$bare"
  git init --bare

  cd "$(dirname "$directory")"
  git clone "$bare" "$directory"
  cd "$directory"
  git checkout -b master
}

################################################################################
trap git_cleanup_temp EXIT
git_set_author "jdoe"
