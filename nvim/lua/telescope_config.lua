local status_ok, telescope = pcall(require, "telescope")
if not status_ok then return end

local actions = require "telescope.actions"

telescope.setup {
    defaults = {
        layout_strategy = "vertical",
        path_display = { "absolute" },
        wrap_results = true,

        mappings = {
            i = {
                ["<esc>"] = actions.close,

                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,
            },
        },
    },

    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
            --   picker_config_key = value,
            --   ...
            -- }
            -- Now the picker_config_key will be applied every time you call this builtin picker
        },

        extensions = {
            -- Your extension configuration goes here:
            -- extension_name = {
                --   extension_config_key = value,
                -- }
                -- please take a look at the readme of the extension you want to configure
            },
        }
