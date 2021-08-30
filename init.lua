CONFIG_PATH = vim.fn.stdpath('config')
DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

require('lv-globals')
vim.cmd('luafile '..CONFIG_PATH..'/lv-settings.lua')
require('settings')
require('lv-matchup')
require('plugins')
require('lv-utils')
require('pluginconfig')
require('lv-autocommands')
require('keymappings')
require('colorscheme') -- This plugin must be required somewhere after nvimtree. Placing it before will break navigation keymappings
require('lv-galaxyline')
require('lv-barbar')
require('lv-telescope')
require('lv-gitsigns')
require('lv-autopairs')
require('lv-rnvimr')

-- extras
if O.extras then
    require('lv-numb')
    require('lv-dial')
    require('lv-hop')
    require('lv-colorizer')
    require('lv-symbols-outline')
end



-- TODO is there a way to do this without vimscript
vim.cmd('source '..CONFIG_PATH..'/vimscript/functions.vim')

-- LSP
require('lsp')

--[[
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.emmet-ls')
require('lsp.html-ls')
require('lsp.json-ls')
require('lsp.latex-ls')
require('lsp.python-ls')
require('lsp.rust-ls')
require('lsp.yaml-ls')
]]
require('term')

require("lsp_signature").setup()
