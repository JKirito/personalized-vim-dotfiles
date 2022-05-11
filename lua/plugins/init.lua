return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'shaunsingh/nord.nvim'

  -- Syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- for bottom status bar
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- for tabs
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  -- file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- auto Tags
  use 'windwp/nvim-ts-autotag'

  -- rainbow
  use 'p00f/nvim-ts-rainbow'

  -- auto-tags
  use 'windwp/nvim-autopairs'

  -- which key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- nvim cmp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- icons on snippets
  use 'onsails/lspkind.nvim'

  -- colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- git Blame for git lines
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup {
        current_line_blame = true
      }
    end
  }

  -- dashboard
  use 'glepnir/dashboard-nvim'

  -- indent lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- formatting
  --use 'lukas-reineke/lsp-format.nvim'

  use {"akinsho/toggleterm.nvim", tag = 'v1.*'}

  --comment plugin
  use 'terrortylor/nvim-comment'

  use {'tami5/lspsaga.nvim'} -- nightly

  use 'williamboman/nvim-lsp-installer'


end)
