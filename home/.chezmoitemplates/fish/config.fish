# Hide fish greeting
set fish_greeting

# Path
fish_add_path ~/bin

# Environment variables
set -gx EDITOR vim

# Activate mise
fish_add_path ~/.local/bin/
if status is-interactive
  mise activate fish | source
else
  mise activate fish --shims | source
end