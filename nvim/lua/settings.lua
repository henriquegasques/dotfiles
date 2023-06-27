vim.cmd([[
  :command WQA wqa
  :command WQa wqa
  :command Wqa wqa
  :command WQ wq
  :command Wq wq
  :command W w
  :command Q q
  :command QA qa
  :command Qa qa
]])

require("nvim-tree").setup({
  on_attach = require('utils').nvim_tree_on_attach,
  hijack_cursor      = true, -- Keep cursor on the first character while navigating the tree
  sync_root_with_cwd = true, -- Sync tree root when cwd changes
  respect_buf_cwd    = true, -- Sync tree root with new buffer dir
  view = { adaptive_size = true },
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
