local remap_key = require("utils").remap_key

--Remap space as leader key
remap_key("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Toggle NvimTree
remap_key("n", "<C-n>", ":NvimTreeFindFileToggle<CR>")

-- Clear highlighting of the previous search pressing Esc
remap_key("n", "<esc>", ":noh<esc>", { silent = true })

-- Better window navigation
remap_key("n", "<C-h>", "<C-w>h")
remap_key("n", "<C-j>", "<C-w>j")
remap_key("n", "<C-k>", "<C-w>k")
remap_key("n", "<C-l>", "<C-w>l")
remap_key("t", "<C-w><C-w>", [[<C-\><C-n><C-w><C-w>]])

-- Resize with arrows
remap_key("n", "<C-Up>", ":resize -2<CR>")
remap_key("n", "<C-Down>", ":resize +2<CR>")
remap_key("n", "<C-Left>", ":vertical resize +2<CR>")
remap_key("n", "<C-Right>", ":vertical resize -2<CR>")


remap_key("n", "<C-p>", "<cmd>Telescope find_files<CR>")
remap_key("n", "<C-f>", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
remap_key("n", "<C-b>", "<cmd>Telescope buffers<cr>")

remap_key("n", "<leader>d", "<cmd>Telescope lsp_definitions<CR>")
remap_key("n", "<leader>r", "<cmd>Telescope lsp_references<CR>")

remap_key("n", "<leader>b", "<cmd>Gitsigns blame_line<CR>")

-- RSpec.vim mappings
remap_key("n", "<leader>t", ":call RunCurrentSpecFile()<CR>")
remap_key("n", "<leader>s", ":call RunNearestSpec()<CR>")
remap_key("n", "<leader>l", ":call RunLastSpec()<CR>")
remap_key("n", "<leader>a", ":call RunAllSpecs()<CR>")

remap_key("n", "<leader>c", ":FloatermNew --title=IRB --position=right --height=0.7 --width=0.5 irb <CR>")
remap_key("n", "<leader>l", ":FloatermNew --title=RuboCop --autoclose=0 --position=bottom --height=0.35 --width=0.65 bundle exec rubocop % <CR>")
