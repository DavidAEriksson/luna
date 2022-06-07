print()

local colors = {
  fg = '#F1F0FA',
  bg = '#272A33',
  gray = '#A2A2A9',
  light_gray = '#4B4B59',
  cyan = '#7DEFFF',
  blue = '#81BBF0',
  dark_blue = '#7698B3',
  green = '#7FD1B9',
  light_green = '#73DDC2',
  dark_red = '#E62E4F',
  red = '#F4616F',
  light_red = '#FCB0B7',
  pink = '#D09E83',
  dark_pink = '#F89898',
  orange = '#FFA36F',
  yellow = '#F6DD9C',
  purple = '#C398F9',
  light_purple = '#C58ABA',
  none = 'NONE',
}

colors.error = colors.dark_red
colors.warn = colors.orange
colors.info = colors.green
colors.hint = colors.purple

colors.diff_add = colors.green
colors.diff_add_bg = colors.bg
colors.diff_change = colors.orange
colors.diff_change_bg = colors.bg
colors.diff_remove = colors.red
colors.diff_remove_bg = '#4D2B2E'
colors.diff_text_bg = '#405D7E'

colors.active = '#21232A'
colors.float = '#21232A' -- Floating window like initial CMP window
colors.highlight = '#333640' -- Highlighted line in visual mode
colors.highlight_dark = '#2A2C34'
colors.selection = '#2D3236'

-- Telescope prompt colors
colors.telescope_prompt_prefix = '#303441'
colors.telescope_prompt_normal = '#303441'
colors.telescope_prompt_border = '#303441'
colors.telescope_prompt_title = '#303441'

-- Telescop results colors
colors.telescope_results_normal = '#24262E'
colors.telescope_results_border = '#24262E'
colors.telescope_results_title = '#24262E'

-- Telescop preview colors
colors.telescope_preview_normal = '#21232A'
colors.telescope_preview_border = '#21232A'
colors.telescope_preview_title = '#21232A'

return colors
