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

require('github-theme').setup({
    options = { styles = { comments = 'italic' } },
})

require("nvim-tree").setup({
  on_attach = require('utils').nvim_tree_on_attach,
  hijack_cursor      = true, -- Keep cursor on the first character while navigating the tree
  sync_root_with_cwd = true, -- Sync tree root when cwd changes
  respect_buf_cwd    = true, -- Sync tree root with new buffer dir
  filters            = { dotfiles = true },
  view = {
    centralize_selection = true,
    adaptive_size = true,
    width = { max = 50 }
  }
})

vim.diagnostic.config({
  virtual_text = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = 'minimal',
    border = 'rounded',
    source = 'always',
  },
})

require('gitsigns').setup()

vim.g.rspec_command = ':FloatermNew --title=RSpec --position=right --height=0.8 --width=0.5 bundle exec rspec {spec}'
