local options = {
  -- cmdheight   = 2,              -- more space in the neovim command line for displaying messages
  backup         = false,          -- creates a backup file
  clipboard      = "unnamedplus",  -- allows neovim to access the system clipboard
  conceallevel   = 0,              -- so that `` is visible in markdown files
  cursorline     = true,           -- highlight the current line
  expandtab      = true,           -- convert tabs to spaces
  fileencoding   = "utf-8",        -- the encoding written to a file
  guicursor      = "",             -- cursor block in all modes
  ignorecase     = true,           -- ignore case in search patterns
  incsearch      = true,           -- incrementally highlight search matches as you type
  list           = true,
  number         = true,           -- set numbered lines
  numberwidth    = 2,              -- set number column width to 2 {default 4}
  pumheight      = 10,             -- pop up menu height
  relativenumber = true,           -- set relative numbered lines
  scrolloff      = 15,             -- scroll offset
  shiftwidth     = 2,              -- the number of spaces inserted for each indentation
  showmode       = false,          -- we don't need to see things like -- INSERT -- anymore
  showtabline    = 0,              -- Never show tabs/buffers
  sidescrolloff  = 15,             -- side scroll offset
  signcolumn     = "yes",          -- always show the sign column, otherwise it would shift the text each time
  smartcase      = true,           -- smart case
  smartindent    = true,           -- make indenting smart again
  splitbelow     = true,           -- force all horizontal splits to go below current window
  splitright     = true,           -- force all vertical splits to go to the right of current window
  swapfile       = false,          -- creates a swapfile
  tabstop        = 2,              -- insert 2 spaces for a tab
  termguicolors  = true,           -- set term gui colors (most terminals support this)
  timeoutlen     = 100,            -- time to wait for a mapped sequence to complete (in milliseconds)
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
  tab   = "» ",
}

vim.cmd [[
  set colorcolumn=100,120
]]

