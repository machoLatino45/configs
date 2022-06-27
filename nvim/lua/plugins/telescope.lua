function map(mode, lhs, rhs, opts)
    local options = {silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
local actions = require("telescope.actions")
-- Telescope
map("n","<leader>ff","<cmd>lua require('telescope.builtin').find_files()<cr>")
map("n","<leader>fg","<cmd>lua require('telescope.builtin').live_grep()<cr>")
map("n","<leader>fb","<cmd>lua require('telescope.builtin').buffers()<cr>")
map("n","<leader>fh","<cmd>lua require('telescope.builtin').help_tags()<cr>")


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
