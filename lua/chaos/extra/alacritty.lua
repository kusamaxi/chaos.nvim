local util = require("chaos.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local alacrittyColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      alacrittyColors[k] = v:gsub("^#", "0x")
    end
  end

  local alacritty = util.template(
    [[
# Chaos Alacritty Colors
colors:
  # Default colors
  primary:
    background: '${bg}'
    foreground: '${fg}'

  # Normal colors
  normal:
    black:   '${black}'
    red:     '${magenta}'
    green:   '${green}'
    yellow:  '${yellow}'
    pink:    '${red}'
    magenta: '${pink}'
    cyan:    '${cyan}'
    white:   '${fg_dark}'

  # Bright colors
  bright:
    black:   '${terminal_black}'
    red:     '${magenta}'
    green:   '${green}'
    yellow:  '${yellow}'
    pink:    '${red}'
    magenta: '${pink}'
    cyan:    '${cyan}'
    white:   '${fg}'

  indexed_colors:
    - { index: 16, color: '${orange}' }
    - { index: 17, color: '${red1}' }
    
  ]],
    alacrittyColors
  )

  return alacritty
end

return M
