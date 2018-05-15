#!/bin/sh

################################################################################
set -e
set -u

################################################################################
top=$(realpath "$(dirname "$0")/..")
tmp_home=""

################################################################################
tmp_clone() {
  repo_name=$1
  tmp_home=$(mktemp -d "${TMPDIR:-/tmp}/tmp-clone.XXXXXXXXXX")
  export HOME=tmp_home
  trap cleanup_temp EXIT

  cd "$tmp_home"
  git clone "$top/repos/$repo_name" > /dev/null

  cd "$(basename "$repo_name" .git)"
}

################################################################################
dollar() {
  echo '$' "$@"
  "$@"
}


################################################################################
cleanup_temp() {
  if [ -n "$tmp_home" ] && [ -e "$tmp_home" ]; then
    rm -rf "$tmp_home"
  fi
}
