local M = {}

-- Loads all highlight groups
M.highlights = function(colors, config)
  local syntax = require('luna.colors.groups.syntax').load(colors, config)

  return vim.tbl_deep_extend("error", syntax)
end

return M
