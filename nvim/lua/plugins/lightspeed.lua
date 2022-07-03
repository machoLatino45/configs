-- `<Plug>Lightspeed_omni_s`   in the whole window area
-- `<Plug>Lightspeed_omni_gs`  in all other windows on the tab page
vim.api.nvim_set_keymap('n','s','<Plug>Lightspeed_omni_s', {silent = true})

require'lightspeed'.setup {
    exit_after_idle_msecs = {unlabeled = 600, labeled = 650},
}

