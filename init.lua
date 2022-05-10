require('plugins')
require('bindings')
require('options')
require('lualine-config')
require('bufferline-config')
require('treesitter-config')
require('nvim-tree-config')
require('autopairs-config')
require('whichkey-config')
require('colorizer-config')
require('dashboard-config')
require('blankline-config')

-- optionals
--require('format-config')

require('lsp')

vim.cmd('colorscheme nord')
