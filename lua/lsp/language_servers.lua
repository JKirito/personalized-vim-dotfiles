--  -- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- local nvim_lsp = require'lspconfig'



-- -- attach on funtion for adding additional keybinds
-- local on_attach = function(client, bufnr)
--   local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
--   local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

--   buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

--   local opts = { noremap=true, silent=true }

--   buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
--   buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
--   buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
--   buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--   buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--   buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
--   buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
--   buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--   buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--   buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
--   buf_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--   buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
--   buf_set_keymap('n', '<space>\\', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
--   buf_set_keymap('n', '<C-k>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--   --buf_set_keymap('n', '<C-n>', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--   --buf_set_keymap('n', '<C-p>', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)

-- end


-- --require'lspconfig/configs'.ls_emmet = {
-- --  default_config = {
-- --    cmd = {'ls_emmet','--stdio'};
-- --    filetypes = {'html','css','scss','typescriptreact'}
-- --  }
-- --}
-- -- python servers can be pylsp or pyright
-- local lang_servers = {'html','cssls','pylsp','cmake','bashls','tsserver','sumneko_lua','ccls','hls','emmet_ls'}

-- for _, server in ipairs(lang_servers) do
--   nvim_lsp[server].setup {
--     capabilities = capabilities,
--     on_attach = on_attach,
--     flags = {
--       debounce_text_changes = 150,
--     },
--     root_dir = function() return vim.loop.cwd() end
--   }
-- end

-- -- emmet_ls support for react tsx jsx
-- nvim_lsp.emmet_ls.setup {
--   capabilities = capabilities,
--   on_attach = on_attach,
--   flags = {
--     debounce_text_changes = 150,
--   },
--   root_dir = function() return vim.loop.cwd() end,
--   filetypes = {'html','css','scss','javascriptreact','typescriptreact'}
-- }

-- -- New Config Using NvimLspInstaller ( Not that good liked it but not worth it, make extra complications )

-- local lsp_installer = require('nvim-lsp-installer')
-- local lspconfig = require('lspconfig')
-- -- lsp_installer.on_server_ready(function(server)
-- --   local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- --   local opts = {
-- --     capabilities = capabilities,
-- --     flags = {
-- --       debounce_text_changes = 150,
-- --     },
-- --     root_dir = function() return vim.loop.cwd() end
-- --   }
-- --   server:setup(opts)
-- --   end
-- -- )

-- lsp_installer.setup({
--     ensure_installed = { "rust_analyzer", "sumneko_lua","tsserver" }, -- ensure these servers are always installed
--     automatic_installation = true, -- automatically detect which servers to install (based on which servers are set up via lspconfig)
--     ui = {
--         icons = {
--             server_installed = "✓",
--             server_pending = "➜",
--             server_uninstalled = "✗"
--         }
--     }
-- })

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- lspconfig.tsserver.setup {
--   capabilities = capabilities,
--   flags = {
--     debounce_text_changes = 150,
--   },
--   root_dir = function() return vim.loop.cwd() end
-- }

