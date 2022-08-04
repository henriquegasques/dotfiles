vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then return end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use 'kyazdani42/nvim-web-devicons' -- Required by some plugins

  -- Colorschemes
  use { "mcchrish/zenbones.nvim", requires = "rktjmp/lush.nvim" }

  use 'nvim-lualine/lualine.nvim'
  use 'kyazdani42/nvim-tree.lua'

  -- TODO:
  -- maybe install telescope
  -- install some git plugin
end)
