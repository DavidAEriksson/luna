package.loaded['luna2'] = nil
package.loaded['luna2.utils'] = nil
package.loaded['luna2.colors'] = nil
package.loaded['luna2.colors.luna'] = nil
package.loaded['luna2.colors.groups'] = nil

vim.api.nvim_set_keymap('n', ',r', ':luafile dev/luna.lua<CR>', {})
vim.api.nvim_set_keymap('n', ',s', ':colorscheme rose-pine<CR>', {})

local luna = require('luna2')
luna.setup({ theme = 'luna'})
luna.load()
