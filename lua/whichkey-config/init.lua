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
  }
}

local opts = {
  prefix = '<leader>'
}

wk.register(mappings, opts)
