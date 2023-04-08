local util = require("chaos.util")

local M = {}

---@class Palette
M.default = {
  none = "NONE",
  bg_dark = "#000000", -- Dark background for contrast and focus
  bg = "#111111", -- Slightly lighter background for normal usage
  bg_highlight = "#222222", -- Background for selected/highlighted items
  terminal_black = "#010101", -- Black for the terminal
  fg = "#E6007A", -- Main pink foreground for attention and readability
  fg_dark = "#a9b1d6", -- Dark foreground for less important text
  fg_gutter = "#3b4261", -- Foreground for line numbers and sidebars
  dark3 = "#555555", -- Dark gray for less important UI elements
  comment = "#565f89", -- Muted color for code comments
  dark5 = "#737aa2", -- Medium gray for UI elements

  -- Main colors:
  cyan = "#00B2FF", -- Fresh and light color, good for accents and selections
  purple = "#552BBF", -- Deep and rich, suitable for syntax highlighting and UI accents
  pink = "#E6007A", -- Vibrant and eye-catching, great for main foreground and important elements
  pink0 = "#E6007A",
  pink1 = "#E61989",
  pink2 = "#E63399",
  pink3 = "#E64CA8",
  pink4 = "#E666B8",
  pink5 = "#E680C7",
  pink6 = "#E699D7",
  pink7 = "#E6B3E6",
  lime = "#D3FF33", -- Bright and lively, useful for warnings and other attention elements
  green = "#56F39A", -- Soothing and balanced, perfect for success messages and git additions

  -- Secondary colors based on main colors:
  blue = "#3d59a1", -- Darker version of cyan for variety and depth
  blue1 = "#2ac3de", -- Blend of cyan and green for additional accents
  blue2 = "#0db9d7", -- Another variation of cyan for more options
  magenta = "#bb9af7", -- Lighter version of purple, useful for additional syntax highlighting
  magenta2 = "#ff007c", -- Blend of pink and purple for extra contrast
  orange = "#ff9e64", -- Blend of pink and lime for warnings and notifications
  yellow = "#e0af68", -- Blend of lime and orange for a muted warning color
  green1 = "#73daca", -- Blend of green and cyan for additional success messages
  green2 = "#41a6b5", -- Blend of green and pink for more depth in syntax highlighting
  teal = "#1abc9c", -- Muted version of green for less prominent elements
  red = "#f7768e", -- Muted version of pink for error messages and git deletions
  red1 = "#db4b4b", -- Blend of pink and purple for additional error messages

  -- Git colors:
  git = {
    change = "#6183bb", -- Blend of pink and cyan to indicate git changes
    add = "#449dab", -- Blend of green and cyan for git additions
    delete = "#914c54", -- Blend of red and pink for git deletions
  },
  gitSigns = {
    add = "#56F39A", -- Green for git additions
    change = "#D3FF33", -- Lime for git changes
    delete = "#E6007A", -- Pink for git deletions
  },
}

M.harmony = function()
  local ret = {
    none = "NONE",
    bg_dark = "#1e2030", --
    bg = "#222436", --
    bg_highlight = "#2f334d", --
    terminal_black = "#444a73", --
    fg = "#c8d3f5", --
    fg_dark = "#828bb8", --
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#7a88cf", --
    dark5 = "#737aa2",
    pink0 = "#3e68d7", --
    pink = "#82aaff", --
    cyan = "#86e1fc", --
    pink1 = "#65bcff", --
    pink2 = "#0db9d7",
    pink5 = "#89ddff",
    pink6 = "#b4f9f8", --
    pink7 = "#394b70",
    purple = "#fca7ea", --
    magenta2 = "#ff007c",
    magenta = "#c099ff", --
    orange = "#ff966c", --
    yellow = "#ffc777", --
    green = "#c3e88d", --
    green1 = "#4fd6be", --
    green2 = "#41a6b5",
    teal = "#4fd6be", --
    red = "#ff757f", --
    red1 = "#c53b53", --
  }
  ret.comment = util.blend(ret.comment, ret.bg, "bb")
  ret.git = {
    change = util.blend(ret.pink, ret.bg, "ee"),
    add = util.blend(ret.green, ret.bg, "ee"),
    delete = util.blend(ret.red, ret.bg, "dd"),
  }
  ret.gitSigns = {
    change = util.blend(ret.pink, ret.bg, "66"),
    add = util.blend(ret.green, ret.bg, "66"),
    delete = util.blend(ret.red, ret.bg, "aa"),
  }
  return ret
end

---@return ColorScheme
function M.setup(opts)
  opts = opts or {}
  local config = require("chaos.config")

  local style = config.is_day() and config.options.light_style or config.options.style
  local palette = M[style] or {}
  if type(palette) == "function" then
    palette = palette()
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = vim.tbl_deep_extend("force", vim.deepcopy(M.default), palette)

  util.bg = colors.bg
  util.day_brightness = config.options.day_brightness

  colors.diff = {
    add = util.darken(colors.green2, 0.15),
    delete = util.darken(colors.red1, 0.15),
    change = util.darken(colors.pink7, 0.15),
    text = colors.pink7,
  }

  colors.git.ignore = colors.dark3
  colors.black = util.darken(colors.bg, 0.8, "#000000")
  colors.border_highlight = util.darken(colors.pink1, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = config.options.styles.sidebars == "transparent" and colors.none
    or config.options.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = config.options.styles.floats == "transparent" and colors.none
    or config.options.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = util.darken(colors.pink0, 0.4)
  colors.bg_search = colors.pink0
  colors.fg_sidebar = colors.fg_dark
  -- colors.fg_float = config.options.styles.floats == "dark" and colors.fg_dark or colors.fg
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.warning = colors.yellow
  colors.info = colors.pink2
  colors.hint = colors.teal

  colors.delta = {
    add = util.darken(colors.green2, 0.45),
    delete = util.darken(colors.red1, 0.45),
  }

  config.options.on_colors(colors)
  if opts.transform and config.is_day() then
    util.invert_colors(colors)
  end

  return colors
end

return M
