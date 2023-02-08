local Utils = {}

function Utils.remap_key(mode, keys, command, opts)
  local options = { noremap = true }

  if opts then options = vim.tbl_extend("force", options, opts) end

  vim.api.nvim_set_keymap(mode, keys, command, options)
end


function Utils.open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory and not no_name then return end

  require("nvim-tree.api").tree.toggle({ find_file = true, })
end

return Utils
