local M = {}

function M.remap_key(mode, keys, command, opts)
  local options = { noremap = true }

  if opts then options = vim.tbl_extend("force", options, opts) end

  vim.api.nvim_set_keymap(mode, keys, command, options)
end

return M
