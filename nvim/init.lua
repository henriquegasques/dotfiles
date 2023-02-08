vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require "settings"
require "plugins"
require "colorscheme"
require "keymaps"
require "options"
require "telescope_config"

local open_nvim_tree  = require("utils").open_nvim_tree

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
