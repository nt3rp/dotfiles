#!/bin/bash
FISH_INSTALL=$(which fish)

# Add fish to the list of shells
if ! grep -q "$FISH_INSTALL" /etc/shells; then
  echo $FISH_INSTALL | sudo tee -a /etc/shells
fi

# Set fish as default shell
if [[ $SHELL != $FISH_INSTALL ]]; then
  echo "Changing default shell to fish"
  chsh -s $FISH_INSTALL
fi