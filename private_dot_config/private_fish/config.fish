# Install fisher, if it isn't already installed.
# https://github.com/jorgebucaran/fisher/issues/644
if status is-interactive && ! functions --query fisher
    curl --silent --location https://git.io/fisher | source && fisher update
end

# Update Path to include local bin
set PATH /home/nterwoord/bin $PATH
set PATH /home/nterwoord/.local/bin $PATH

# Set vim as the global editor
set -gx EDITOR vim

# Hide welcome message
set fish_greeting
