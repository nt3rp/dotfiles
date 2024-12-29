#!/bin/bash
if [[ ! $(command -v brew) ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "brew is already installed"
fi

packages=(
  "coreutils"
  "fish"
  "git"
  "vim"
  "mas"
  "vivaldi"
  "rescuetime"
  "spotify"
)

brew install ${packages[@]}