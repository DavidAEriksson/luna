local theme = require('luna.theme')

local M = {}

M.highlight = function(group, colors)
  local style = colors.style and "gui=" .. colors.style or "gui=NONE"
  local fg = colors.fg and "guifg=" .. colors.fg or "guifg=NONE"
  local bg = colors.bg and "guibg=" .. colors.bg or "guibg=NONE"
  local sp = colors.sp and "guisp=" .. colors.sp or ""

  local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

  vim.cmd(hl)
  if colors.link then
    vim.cmd("highlight! link " .. group .. " " .. colors.link)
  end
end

M.load = function(colors, exec_autocmd)
  local config = require("luna.config").options
  -- Reset all highlighting to the defaults.
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  -- Reset all colors to the defaults.
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "luna"

  -- Load highlights
  colors = vim.tbl_deep_extend("force", colors, config.custom_colors)
  local base_highlights = theme.highlights(colors, config)

  local highlights = vim.tbl_deep_extend("force", base_highlights, config.custom_highlights)

  for group, color in pairs(highlights) do
    M.highlight(group, color)
  end

  if exec_autocmd then
    vim.cmd("doautocmd ColorScheme")
  end
end

return M
