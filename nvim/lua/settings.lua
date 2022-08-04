require("nvim-tree").setup({
  view = {
    adaptive_size = true,
    -- mappings = { list = { { key = "some key", action = "some nvim-tree action" }}}
  },
  filters = {
    dotfiles = true,
  },
})
