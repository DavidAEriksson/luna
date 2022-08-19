local groups = require('luna2.colors.groups')

local M = {}

M.load = function(colors)
  local config = require('luna2.config')
  vim.o.termguicolors = true
  vim.g.colors_name = "luna"

  -- Make sure we use overrides from config in case of duplicate
  colors = vim.tbl_deep_extend('force', colors, config.options.custom_colors)
  local base_hi = groups.load_groups(colors, config)
  local highlights = vim.tbl_deep_extend('force', base_hi, config.options.custom_colors)
  for group, color in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, color)
  end
end

return M
