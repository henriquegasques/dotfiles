vim.g.zenbones = {
  darken_comments     = 35,
  darken_non_text     = 15,
  darken_line_nr      = 30,
  -- darkness         = 'warm',
  lightness           = 'dim',
  solid_vert_split    = true,
}

vim.cmd [[
  set termguicolors
  set background=light

  colorscheme github_light_default
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
