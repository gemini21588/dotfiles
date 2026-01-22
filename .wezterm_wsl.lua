-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu-24.04'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Nightfly"

-- Font size
config.font_size = 9
config.font = wezterm.font 'FiraCode Nerd Font Mono'

config.initial_rows = 40
config.initial_cols = 150

-- Độ trong suốt (0.8 tương đương với 80%)
config.window_background_opacity = 0.1

-- (Tùy chọn) Làm mờ phần nền phía sau - chỉ hoạt động trên macOS và Windows
-- Giúp chữ dễ đọc hơn trên nền trong suốt
config.macos_window_background_blur = 20
config.win32_system_backdrop = "Mica" -- Hoặc 'Mica' cho Win 11

config.mouse_bindings = {
  {
    event = { Down = { streak = 1, button = 'Right' } },
    action = wezterm.action_callback(function(window, pane)
      if window:get_selection_text_for_pane(pane) ~= '' then
        window:perform_action(wezterm.action.CopyTo 'Clipboard', pane)
        window:perform_action(wezterm.action.ClearSelection, pane)
      else
        window:perform_action(wezterm.action.PasteFrom 'Clipboard', pane)
      end
    end),
  },
}


-- and finally, return the configuration to wezterm
return config