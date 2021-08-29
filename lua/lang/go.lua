-- LSP
require'lspconfig'.gopls.setup{
    cmd = {DATA_PATH .. "/lspinstall/go/gopls"},
    settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}},
    root_dir = require'lspconfig'.util.root_pattern(".git","go.mod"),
    init_options = {usePlaceholders = true, completeUnimported = true},
    on_attach = require'lsp'.common_on_attach
}

-- DAP
local dap = require "dap"
vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='', linehl='', numhl=''})
--vim.fn.sign_define('DapStopped', {text='⭐️', texthl='', linehl='', numhl=''})

dap.adapters.go = {
    type = "server",
    host = "127.0.0.1",
    port = 38697,
  }

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
    {
        type = "go",
        name = "Debug",
        request = "launch",
        program = "${file}"
    },
    -- works with go.mod packages and sub packages 
    {
        type = "go",
        name = "Debug test (go.mod)",
        request = "launch",
        mode = "test",
        program = "./${relativeFileDirname}"
    } 
}
