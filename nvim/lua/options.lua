local options = {
  -- cmdheight   = 2,              -- more space in the neovim command line for displaying messages
  backup         = false,          -- Don't create backup files
  clipboard      = "unnamedplus",  -- allows neovim to access the system clipboard
  conceallevel   = 0,              -- so that `` is visible in markdown files
  cursorline     = true,           -- highlight the current line
  expandtab      = true,           -- convert tabs to spaces
  tabstop        = 4,              -- insert 4 spaces for a tab
  smartindent    = true,           -- make indenting smart again
  shiftwidth     = 0,              -- the number of spaces inserted for each indentation
  fileencoding   = "utf-8",        -- the encoding written to a file
  guicursor      = "",             -- cursor block in all modes
  ignorecase     = true,           -- ignore case in search patterns
  incsearch      = true,           -- incrementally highlight search matches as you type
  list           = true,
  number         = true,           -- set numbered lines
  relativenumber = true,           -- set relative numbered lines
  numberwidth    = 1,              -- set number column width to 2 {default 4}
  pumheight      = 10,             -- pop up menu height
  scrolloff      = 20,             -- scroll offset
  showmode       = false,          -- we don't need to see things like -- INSERT -- anymore
  showtabline    = 0,              -- Never show tabs/buffers
  signcolumn     = "yes",          -- always show sign column, otherwise it would shift the text each time
  smartcase      = true,           -- smart case
  splitbelow     = true,           -- horizontal splits go below current window
  splitright     = true,           -- vertical splits go to the right of current window
  swapfile       = false,          -- Don't creates swapfiles
  termguicolors  = true,           -- set term gui colors
  timeoutlen     = 500,            -- time to wait for a mapped sequence to complete (in milliseconds)
  undofile       = true,           -- enable persistent undo
  updatetime     = 300,            -- faster completion (4000ms default)
  wrap           = true,           -- display lines as one long line
  writebackup    = false,          -- if a file is being edited or was written while editing with another program, it is not allowed to be edited
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

vim.opt.listchars = {
  trail = "•",
  eol   = "↲",
  -- tab   = "» ",
}

vim.cmd [[
  set colorcolumn=100,120
]]

