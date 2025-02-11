vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "keymaps"
require "lazy_config"
require "settings"
require "plugins"
require "colorscheme"
require "options"
require "telescope_config"

-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = require("lspconfig").util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  "force",
  lspconfig_defaults.capabilities,
  require("cmp_nvim_lsp").default_capabilities()
)

require("lspconfig").solargraph.setup{}

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>']   = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-Tab>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<CR>']    = cmp.mapping.confirm({select = false}),
    ['<C-u>']   = cmp.mapping.scroll_docs(-4),
    ['<C-d>']   = cmp.mapping.scroll_docs(4),
  }),
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body)
    end,
  },
})

local open_nvim_tree = require("utils").open_nvim_tree

vim.api.nvim_create_autocmd("VimEnter", { callback = open_nvim_tree })
vim.api.nvim_create_autocmd("CursorHold", { command = "lua vim.diagnostic.open_float({\"line\"})" })
