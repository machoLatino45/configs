require("util")
-- `<Plug>Lightspeed_omni_s`   in the whole window area
-- `<Plug>Lightspeed_omni_gs`  in all other windows on the tab page
map('n','s','<Plug>Lightspeed_omni_s')

require'lightspeed'.setup {
    exit_after_idle_msecs = {unlabeled = 550, labeled = 550}
}

