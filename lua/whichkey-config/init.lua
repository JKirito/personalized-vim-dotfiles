local wk = require("which-key")

local mappings = {
  Q = {"<cmd>:wq<cr>","save & quit"},
  w = {":w<cr>","save"},
  q = {":q<cr>","quit"},
  x = {":bdelete<cr>","close buffer"},
  E = {":e ~/.config/nvim/init.lua<cr>","Edit Config"},
  f = {
    name = "file",
    f = {"<cmd>Telescope find_files<cr>","Find File"},
    r = {"<cmd>Telescope oldfiles<cr>","Recent Files",noremap= false},
    g = {"<cmd>Telescope live_grep<cr>","Live Grep"},
  },
  g = {
    name = "git",
    c = {"<cmd>Telescope git_commits<cr>","commits"},
    b = {"<cmd>Telescope git_branches<cr>","branches"},
    s = {"<cmd>Telescope git_status<cr>","status"},
  },
  l = {
    name = 'lsp',
    i = {':LspInfo<cr>','connected language servers'},
    K = {'<cmd>lua vim.lsp.buf.signature_help()<cr>','signature help'},
    k = {'<cmd>lua vim.lsp.buf.hover()<cr>','hover commands'},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>','Add Workspace Folder'},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>','Remove Workspace Folder'},
    l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>','List Workspace Folders'},
    t = {'<cmd>lua vim.lsp.buf.type_definition()<cr>','Type Definitions'},
    d = {'<cmd>lua vim.lsp.buf.definition()<cr>',"Go To Definitions"},
    D = {'<cmd>lua vim.lsp.buf.declaration()<cr>',"Go To Decleration"},
    r = {'<cmd>lua vim.lsp.buf.references<cr>',"References"},
    R = {'<cmd>lua vim.lsp.buf.rename()<cr>',"Rename"},
    a = {'<cmd>lua vim.lsp.buf.code_action()<cr>',"Code Actions"},
    e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>',"Show Line Diagnostics"},
    n = {'<cmd>lua vim.lsp.diagnostic.goto_next()<cr>',"Goto Next Diagnostic"},
    N = {'<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>',"Goto Prev Diagnostics"},

  }
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
