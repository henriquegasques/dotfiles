vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Have packer use a popup window.
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'       -- Packer can manage itself.
  use 'kyazdani42/nvim-web-devicons' -- Required by some plugins.
  use 'nvim-lua/plenary.nvim'        -- Required by a lot of plugins.

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end
  }

  -- Colorschemes
  use { "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" }
  use 'henriquegasques/vim-gotham'
  use 'projekt0n/github-nvim-theme'

  use 'nvim-lualine/lualine.nvim'                        -- Statusline
  use 'kyazdani42/nvim-tree.lua'                         -- File tree
  use 'lewis6991/gitsigns.nvim'                          -- Git integration
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = { { "nvim-telescope/telescope-live-grep-args.nvim" } },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  }
  use 'xiyaowong/nvim-transparent'                       -- Remove all bg colors
  use 'elixir-editors/vim-elixir'
  use 'neovimhaskell/haskell-vim'
  use 'udalov/kotlin-vim'
  use 'vim-crystal/vim-crystal'
  use 'thoughtbot/vim-rspec'
  use 'voldikss/vim-floaterm'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
