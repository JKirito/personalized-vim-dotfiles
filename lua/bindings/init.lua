-- personal keybinds
-- setting mapleader
vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- mapping focus transfer
map('n','<C-h>','<C-w>h',{noremap = true,silent = false})
map('n','<C-l>','<C-w>l',{noremap = true,silent = false})
map('n','<C-j>','<C-w>j',{noremap = true,silent = false})
map('n','<C-k>','<C-w>k',{noremap = true,silent = false})

map('n','<leader>e',':NvimTreeToggle<CR>',{noremap = true,silent = true})
map('v', '<','<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

map('i','<c-_>','<cmd>:CommentToggle<cr>',{noremap = true,silent = true})
map('n','<c-_>','<cmd>:CommentToggle<cr>',{noremap = true,silent = true})
-- binding for visual mode dont work as expected
--map('x','<c-_>','<cmd>:\'<,\'>CommentToggle<cr>',{noremap = true,silent = true})

-- mapping escape
--map('i','jk','<ESC>',{noremap = true,silent = false})
--map('i','kj','<ESC>',{noremap = true,silent = false})
