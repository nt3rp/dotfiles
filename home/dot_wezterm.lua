local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- Styles
config.color_scheme = 'Solarized Dark (Gogh)'
config.font_size = 9.0

-- Behaviour
config.window_decorations = "TITLE|INTEGRATED_BUTTONS|RESIZE"
config.enable_scroll_bar = true

-- Shell + Launcher Options
config.default_domain = 'WSL:Ubuntu'

return config
