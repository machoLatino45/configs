local actions = require("telescope.actions")
local keymap = vim.api.nvim_set_keymap

-- Telescope
keymap('n','<leader>ff' ,'<cmd>lua require("telescope.builtin").find_files()<cr>',{ silent = true, noremap= true})
keymap('n','<leader>fg' ,'<cmd>lua require("telescope.builtin").live_grep()<cr>',{ silent = true, noremap= true})
keymap('n','<leader>fb' ,'<cmd>lua require("telescope.builtin").buffers()<cr>',{ silent = true, noremap= true})
keymap('n','<leader>fh' ,'<cmd>lua require("telescope.builtin").help_tags()<cr>',{ silent = true, noremap= true})


require('telescope').setup{
    defaults = {
        file_igeore_patterns = {"node_modules", "target"},
        mappings = {
            i = {
                ["<M-v>"] = actions.file_vsplit
            }
        }
    }
}
