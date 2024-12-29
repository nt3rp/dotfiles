#!/bin/bash
packages=(
  "curl"
  "git"
  "vim"
)

sudo apt update
sudo apt install -y ${packages[@]}
