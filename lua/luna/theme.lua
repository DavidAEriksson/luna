local M = {}

-- Loads all highlight groups
M.highlights = function(colors, config)
  local syntax = require('luna.colors.groups.syntax').load_syn(colors, config)
  local editor = require('luna.colors.groups.editor').load_ed(colors, config)
  local treesitter = require('luna.colors.groups.treesitter').load_ts(colors, config)
  local lsp = require('luna.colors.groups.lsp').load_lsp(colors, config)
  local nvim_tree = require('luna.colors.groups.nvim-tree').load_nvim_tree(colors, config)
  local cmp = require('luna.colors.groups.cmp').load_cmp(colors)
  local git = require('luna.colors.groups.git').load_git(colors)
  local bufferline = require('luna.colors.groups.bufferline').load_bufferline(colors)
  return vim.tbl_deep_extend('error', syntax, editor, treesitter, lsp, nvim_tree, cmp, git, bufferline)
end

return M
