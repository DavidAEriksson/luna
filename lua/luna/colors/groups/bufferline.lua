local M = {}

-- @function load
-- @desc Loads the highlight group for bufferline highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_bufferline = function(colors)
  local bufferline = {
    BufferLineIndicatorSelected = { fg = colors.cyan, bg = colors.bg },
    BufferLineFill = { fg = colors.bg, bg = colors.active },
    BufferLineTabSelected = { fg = colors.cyan, bg = colors.bg, style = "bold" },
    BufferCurrent = { fg = colors.fg, bg = colors.bg },
    BufferCurrentIndex = { fg = colors.fg, bg = colors.bg },
    BufferCurrentMod = { fg = colors.yellow, bg = colors.bg, style = 'bold' },
    BufferCurrentSign = { fg = colors.cyan, bg = colors.bg },
    BufferCurrentTarget = { fg = colors.red, bg = colors.bg, style = 'bold' },
    BufferVisible = { fg = colors.fg, bg = colors.bg },
    BufferVisibleIndex = { fg = colors.fg, bg = colors.bg },
    BufferVisibleMod = { fg = colors.yellow, bg = colors.bg, style = 'bold' },
    BufferVisibleSign = { fg = colors.light_gray, bg = colors.bg },
    BufferVisibleTarget = { fg = colors.red, bg = colors.bg, style = 'bold' },
    BufferInactive = { fg = colors.light_gray, bg = colors.active },
    BufferInactiveIndex = { fg = colors.light_gray, bg = colors.active },
    BufferInactiveMod = { fg = colors.yellow, bg = colors.active },
    BufferInactiveSign = { fg = colors.light_gray, bg = colors.active },
    BufferInactiveTarget = { fg = colors.red, bg = colors.active, style = 'bold' },
  }
  return bufferline
end

return M
