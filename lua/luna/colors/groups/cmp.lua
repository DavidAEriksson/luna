local M = {}

-- @function load
-- @desc Loads the highlight group for cmp highlights.
-- @param color - The colors table.
-- @param config - The configuration table.
M.load_cmp = function(colors)
  local cmp = {
    CmpItemAbbr = { fg = colors.fg },
    CmpItemAbbrDeprecated = { fg = colors.fg },
    CmpItemAbbrMatch = { fg = colors.blue, style = 'bold' },
    CmpItemAbbrMatchFuzzy = { fg = colors.blue, underline = true },
    CmpItemMenu = { fg = colors.light_gray },

    CmpItemKindText = { fg = colors.orange },
    CmpItemKindMethod = { fg = colors.blue },
    CmpItemKindFunction = { fg = colors.blue },
    CmpItemKindConstructor = { fg = colors.yellow },
    CmpItemKindField = { fg = colors.blue },
    CmpItemKindClass = { fg = colors.yellow },
    CmpItemKindInterface = { fg = colors.yellow },
    CmpItemKindModule = { fg = colors.blue },
    CmpItemKindProperty = { fg = colors.blue },
    CmpItemKindValue = { fg = colors.orange },
    CmpItemKindEnum = { fg = colors.yellow },
    CmpItemKindKeyword = { fg = colors.purple },
    CmpItemKindSnippet = { fg = colors.green },
    CmpItemKindFile = { fg = colors.blue },
    CmpItemKindEnumMember = { fg = colors.cyan },
    CmpItemKindConstant = { fg = colors.orange },
    CmpItemKindStruct = { fg = colors.yellow },
    CmpItemKindTypeParameter = { fg = colors.yellow },
  }
  return cmp
end

return M
