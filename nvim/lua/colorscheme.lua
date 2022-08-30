vim.g.zenbones = {
  darken_non_text = 15,
}

vim.cmd [[
  set termguicolors
  set background=light

  colorscheme zenbones
]]


require("lualine").setup {
  options = { theme = "zenwritten" },
}
