local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n","s","<cmd>Pounce<CR>")
map("n","S","<cmd>PounceRepeat<CR>")
map("v","s","<cmd>Pounce<CR>")
map("o","s","<cmd>Pounce<CR>")
require'pounce'.setup{
  accept_keys = "JFKDLSAHGNUVRBYTMICEOXWPQZ",
  multi_window = true,
  debug = false,
}
