local M = {}

-- @function load
-- @desc Loads the highlight group for telescope highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_telescope = function(colors)
  local telescope = {
    TelescopePromptPrefix = { bg = colors.telescope_prompt_prefix },
    TelescopePromptNormal = { bg = colors.telescope_prompt_normal },
    TelescopeResultsNormal = { bg = colors.telescope_results_normal },
    TelescopePreviewNormal = { bg = colors.telescope_results_normal },

    TelescopePromptBorder = { bg = colors.telescope_prompt_border, fg = colors.telescope_prompt_border },
    TelescopeResultsBorder = { bg = colors.telescope_results_border, fg = colors.telescope_results_border },
    TelescopePreviewBorder = { bg = colors.telescope_preview_border, fg = colors.telescope_preview_border },

    TelescopePromptTitle = { fg = colors.telescope_prompt_title, bg = colors.orange },
    TelescopeResultsTitle = { fg = colors.telescope_results_title },
    TelescopePreviewTitle = { fg = colors.telescope_preview_title, bg = colors.yellow },
  }
  return telescope
end

return M
