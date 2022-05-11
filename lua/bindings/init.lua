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

-- general bindings
map('n','<c-s>','<cmd>w<cr>',{noremap = true,silent = false})

-- lsp keybinds
--map('n','<c-s>','<cmd>lua vim.lsp.buf.code_action()<cr>',{noremap = true,silent = false})
--map('n','<M-t>','<cmd>lua vim.lsp.buf.type_definition()<cr>',{noremap = false,silent = false})

-- Lspsaga bindings
map("n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {noremap = true,silent =true})
map("n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {noremap = true,silent = true})
