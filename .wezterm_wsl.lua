-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu-24.04'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- Font size
config.font_size = 9
config.font = wezterm.font 'FiraCode Nerd Font Mono'

config.initial_rows = 40
config.initial_cols = 150

-- and finally, return the configuration to wezterm
return config