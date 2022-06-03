local M = {}

-- @function load
-- @desc Loads the highlight group for telescope highlights.
-- @param color - The colors table.
M.load_telescope = function(colors)
  local telescope = {
    TelescopePromptPrefix = { bg = colors.telescope_prompt_prefix },
    TelescopePromptNormal = { bg = colors.telescope_prompt_normal },
    TelescopeResultsNormal = { bg = colors.telescope_results_normal },
    TelescopePreviewNormal = { bg = colors.telescope_preview_normal },

    TelescopePromptBorder = { bg = colors.telescope_prompt_border, fg = colors.telescope_prompt_border },
    TelescopeResultsBorder = { bg = colors.telescope_results_border, fg = colors.telescope_results_border },
    TelescopePreviewBorder = { bg = colors.telescope_preview_border, fg = colors.telescope_preview_border },

    TelescopePromptTitle = { fg = colors.telescope_prompt_title, bg = colors.orange },
    TelescopeResultsTitle = { fg = colors.telescope_results_title },
    TelescopePreviewTitle = { fg = colors.telescope_preview_title, bg = colors.orange },

    TelescopeMatching = { fg = colors.orange },
    TelescopeSelectionCaret = { fg = colors.cyan },
    TelescopeSelection = { fg = colors.cyan },
  }
  return telescope
end

return M
