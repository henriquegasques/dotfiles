vim.g.zenbones = {
  darken_non_text = 15,
  lightness       = 'bright',
  darkness        = 'warm',
}

vim.cmd [[
  set termguicolors
  set background=dark

  colorscheme gotham
]]

require("transparent").setup({ enable = true })

-- Override some of Gotham's orange with yellow
vim.api.nvim_set_hl(0, "Type", { fg = '#edb443' })

require("lualine").setup { options = { theme = "auto" } }
