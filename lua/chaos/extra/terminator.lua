local util = require("chaos.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local terminator = util.template(
    [=[
[[${_style_name}]]
  palette = "${black}:${red}:${green}:${yellow}:${pink}:${magenta}:${cyan}:${fg_dark}:${terminal_black}:${red}:${green}:${yellow}:${pink}:${magenta}:${cyan}:${purple}"
  background_color = "${bg}"
  foreground_color = "${fg}"
  ]=],
    colors
  )
  return terminator
end

return M
