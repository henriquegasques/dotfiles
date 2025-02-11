return {
    'kyazdani42/nvim-web-devicons', -- Required by some plugins.
    'nvim-lua/plenary.nvim',        -- Required by a lot of plugins.

    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000,
    },

    'henriquegasques/vim-gotham',
    { "mcchrish/zenbones.nvim", dependencies = "rktjmp/lush.nvim" },

    'nvim-lualine/lualine.nvim',
    'lewis6991/gitsigns.nvim',
    'xiyaowong/nvim-transparent',
    'elixir-editors/vim-elixir',
    'neovimhaskell/haskell-vim',
    'udalov/kotlin-vim',
    'vim-crystal/vim-crystal',
    'thoughtbot/vim-rspec',
    'voldikss/vim-floaterm',

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { { "nvim-telescope/telescope-live-grep-args.nvim" } },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
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
    },
}
