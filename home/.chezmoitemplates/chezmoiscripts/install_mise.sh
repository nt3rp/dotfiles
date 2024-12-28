#!/bin/bash
# TODO: Determine if gpg needs to be installed first.
set -Eeuo pipefail
export PATH="$PATH:~/.local/bin"

# Instructions mostly copied from https://mise.jdx.dev/installing-mise.html
if [[ ! $(command -v mise) ]]; then
  gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys 0x7413A06D
  curl https://mise.jdx.dev/install.sh.sig | gpg --decrypt > install.sh
  sh ./install.sh
  rm ./install.sh
  export PATH="$PATH:~/.local/bin"
else
  mise self-update
end

# TODO: Add plugins or install updates