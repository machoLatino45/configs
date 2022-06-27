function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local actions = require("telescope.actions")


-- Telescope
map("n","<leader>ff","<cmd>lua require('telescope.builtin').find_files()<cr>",{silent = true})
map("n","<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<cr>",{silent = true})
map("n","<leader>fb","<cmd>lua require('telescope.builtin').buffers()<cr>",{silent = true})
map("n","<leader>fh","<cmd>lua require('telescope.builtin').help_tags()<cr>",{silent = true})


require('telescope').setup{
    defaults = {
        file_ignore_patterns = {"node_modules", "target"},
        mappings = {
            i = {
                ["<M-v>"] = actions.file_vsplit
            }
        }
    }
}
