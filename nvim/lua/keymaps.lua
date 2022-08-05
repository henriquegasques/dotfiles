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
remap_key("n", "<C-n>", ":NvimTreeToggle<CR>")

-- Clear highlighting of the previous search pressing Esc
remap_key("n", "<esc>", ":noh<esc>", { silent = true })

-- Better window navigation
remap_key("n", "<C-h>", "<C-w>h")
remap_key("n", "<C-j>", "<C-w>j")
remap_key("n", "<C-k>", "<C-w>k")
remap_key("n", "<C-l>", "<C-w>l")

-- Resize with arrows
remap_key("n", "<C-Up>", ":resize -2<CR>")
remap_key("n", "<C-Down>", ":resize +2<CR>")
remap_key("n", "<C-Left>", ":vertical resize -2<CR>")
remap_key("n", "<C-Right>", ":vertical resize +2<CR>")

remap_key("n", "<C-p>", "<cmd>Telescope find_files<CR>")
remap_key("n", "<C-f>", "<cmd>Telescope live_grep<CR>")
remap_key("n", "<C-b>", "<cmd>Telescope buffers<cr>")
