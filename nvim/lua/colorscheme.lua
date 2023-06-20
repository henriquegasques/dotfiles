vim.g.zenbones = {
  darken_non_text = 15,
  -- lightness       = 'dim',
  -- darkness        = 'warm',
}

vim.cmd [[
  set termguicolors
  set background=light

  colorscheme zenbones
]]

require("transparent")

vim.g.transparent_enabled = false

-- Override some of Gotham's orange with yellow
-- vim.api.nvim_set_hl(0, "Type", { fg = '#edb443' })

require("lualine").setup {
  options = { theme = "auto" },
  sections = {
    lualine_c = {
      { "filename", path = 1 }
    },
  },
}
