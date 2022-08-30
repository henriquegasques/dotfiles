require("nvim-tree").setup({
  view = {
    adaptive_size = true,
     mappings = {
       list = {{ key = "x", action = "close_node" }},
     },
  },
  filters = {},
})

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()

vim.diagnostic.config({ virtual_text = true })

require('gitsigns').setup {
  -- Overrides default signs for add and change
  signs = {
    add    = {hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change = {hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}

require('mind').setup()
