local colors = require("chaos.colors").setup({ transform = true })

local chaos = {}

chaos.normal = {
  left = { { colors.black, colors.pink }, { colors.pink, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.pink }, { colors.pink, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

chaos.insert = {
  left = { { colors.black, colors.green }, { colors.pink, colors.bg } },
}

chaos.visual = {
  left = { { colors.black, colors.magenta }, { colors.pink, colors.bg } },
}

chaos.replace = {
  left = { { colors.black, colors.red }, { colors.pink, colors.bg } },
}

chaos.inactive = {
  left = { { colors.pink, colors.bg_statusline }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
}

chaos.tabline = {
  left = { { colors.dark3, colors.bg_highlight }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
  tabsel = { { colors.pink, colors.fg_gutter }, { colors.dark3, colors.bg } },
}

return chaos
