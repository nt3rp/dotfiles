#!/usr/bin/env fish
if not type -q fisher
  curl --silent --location https://git.io/fisher | source && fisher update
end