local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  default_cursor_style = "SteadyBar",
  -- default_cursor_style = "BlinkingBar",
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  adjust_window_size_when_changing_font_size = false,
  window_decorations = "RESIZE",
  color_scheme = "Catppuccin Mocha",
  font_size = 12.5,
  -- font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
  enable_tab_bar = false,
  initial_rows = 28,
  initial_cols = 110,
  -- window_padding = {
  --   left = 3,
  --   right = 3,
  --   top = 0,
  --   bottom = 0,
  -- },
  background = {
    {
      source = {
        File = "/home/voren/.config/wezterm/wallpapers/rem.jpg",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.02,
        brightness = 0.25,
      },
      -- attachment = { Parallax = 0.3 },
      width = "100%",
      height = "100%",
    },
    {
      source = {
        -- Color = "#282c35",
        Color = "#1e1e2e",
      },
      width = "100%",
      height = "100%",
      -- opacity = 0.55,
      opacity = 0.75,
    },
  },
  hyperlink_rules = {
    -- Matches: a URL in parens: (URL)
    {
      regex = "\\((\\w+://\\S+)\\)",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in brackets: [URL]
    {
      regex = "\\[(\\w+://\\S+)\\]",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in curly braces: {URL}
    {
      regex = "\\{(\\w+://\\S+)\\}",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in angle brackets: <URL>
    {
      regex = "<(\\w+://\\S+)>",
      format = "$1",
      highlight = 1,
    },
    -- Then handle URLs not wrapped in brackets
    {
      -- Before
      --regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
      --format = '$0',
      -- After
      regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
      format = "$1",
      highlight = 1,
    },
    -- implicit mailto link
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
  },
  keys = {
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
  },
window_background_gradient = {
  orientation = 'Vertical',
  colors = {
    '#1E1E2E', -- Base color
    '#2E2A5B', -- Accent for depth
    '#585273', -- Secondary accent for transition
    '#DDB6F2', -- Light accent for contrast and highlight
  },
  interpolation = 'CatmullRom',  -- Smooth transition between colors
  blend = 'Oklab',               -- Oklab blend mode for natural color blending
  -- Optional segment adjustments (uncomment to experiment with them)
  -- segment_size = 10,
  -- segment_smoothness = 0.5,
}
}

return config
