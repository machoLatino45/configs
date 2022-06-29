local opts = { noremap=true, silent=true }
vim.keymap.set('n', 'gh', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[[', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']]', vim.diagnostic.goto_next, opts)

local on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr,'omnifunc', 'v:lua.vim.lsp.omnifunc')
  -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', 'gh', '<cmd>lua vim.diagnostic.open_float(0,{scope="line", border="single"})<CR>', opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

vim.g.markdown_fenced_languages = {
    "ts=typescript"
}

local lsp_flags = {
    debounce_text_changes = 150,
}

require('lspconfig').denols.setup{
    flags = lsp_flags,
    on_attach = on_attach
}

require('lspconfig').pyright.setup{
    flags = lsp_flags,
    on_attach = on_attach
}

require('lspconfig').rust_analyzer.setup{
    flags = lsp_flags,
    on_attach = on_attach
}


local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")


require('lspconfig').sumneko_lua.setup {
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT'
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("",true),
            },
            telemetry = {
                enable = false,
            }
        }
    },
}

vim.diagnostic.config {
    severity_sort = true,
    virtual_text = false
}
