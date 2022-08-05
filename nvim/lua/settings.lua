require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    -- mappings = { list = { { key = "some key", action = "some nvim-tree action" }}}
  },
  filters = {
    dotfiles = true,
  },
})

local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.setup()
