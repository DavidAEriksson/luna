local M = {}

-- Loads all highlight groups
M.highlights = function(colors, config)
  local syntax = require('luna.colors.groups.syntax').load_syn(colors, config)
  local editor = require('luna.colors.groups.editor').load_ed(colors, config)
  return vim.tbl_deep_extend("error", syntax, editor)
end

return M

