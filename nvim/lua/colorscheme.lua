vim.g.zenbones = {
  darken_comments     = 30,
  darken_non_text     = 15,
  darken_line_nr      = 30,
  -- darkness         = 'warm',
  -- lightness           = 'dim',
  solid_vert_split    = true,
}

vim.cmd [[
  set termguicolors
  set background=light

  colorscheme github_light
]]

require("transparent")

vim.g.transparent_enabled = false

require("lualine").setup {
  options = { theme = "auto" },
  sections = {
    lualine_c = {
      { "filename", path = 1 }
    },
  },
}
