local colors = {
  fg = '#F5C9C9',
  fg_light = '#FCE3E3',
  bg = '#1a1f27',
  gray = '#425455',
  light_gray = '#A2B6B5',
  cyan = '#82D2DB',
  blue = '#578EC5',
  dark_blue = '#41648E',
  green = '#8CBEA9',
  light_green = '#73DDC2',
  dark_red = '#BC223E',
  red = '#F4616F',
  light_red = '#FCB0B7',
  pink = '#FBBFCA',
  dark_pink = '#F89898',
  orange = '#ED8553',
  yellow = '#F6DD9C',
  purple = '#CD64BA',
  light_purple = '#C58ABA',
  none = 'NONE',
}

colors.error = colors.dark_red
colors.warn = colors.orange
colors.info = colors.green
colors.hint = colors.purple

colors.diff_add = colors.green
colors.diff_add_bg = '#394E3D'
colors.diff_change = colors.dark_blue
colors.diff_change_bg = '#39495D'
colors.diff_remove = colors.red
colors.diff_remove_bg = '#4D2B2E'
colors.diff_text_bg = '#405D7E'

colors.active = '#353B49'
colors.float = '#3B4252'
colors.highlight = '#3F4758'
colors.highlight_dark = '#434C5E'
colors.selection = '#4C566A'

return colors
