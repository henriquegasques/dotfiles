vim.cmd [[
try
  set termguicolors
  set background=light

  colorscheme zenbones
endtry
]]

require("lualine").setup {
  options = { theme = "zenbones" },
}
