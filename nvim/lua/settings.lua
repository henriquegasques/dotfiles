require("nvim-tree").setup({
  hijack_cursor      = true, -- Keep cursor on the first character while navigating the tree
  sync_root_with_cwd = true, -- Sync tree root when cwd changes
  respect_buf_cwd    = true, -- Sync tree root with new buffer dir
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
