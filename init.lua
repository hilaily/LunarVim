require('lv-globals')
vim.cmd('luafile '..CONFIG_PATH..'/lv-settings.lua')
require('settings')
require('lv-gitblame')
require('lv-matchup')
require('plugins')
require('lv-utils')
require('pluginconfig')
require('lv-autocommands')
require('keymappings')
require('colorscheme') -- This plugin must be required somewhere after nvimtree. Placing it before will break navigation keymappings
require('lv-galaxyline')
require('lv-comment')
require('lv-gitblame')
require('lv-barbar')
require('lv-telescope')
require('lv-gitsigns')
require('lv-autopairs')
require('lv-rnvimr')
require('lv-lsp-rooter')
-- require('lv-nvim-dap')
require('dap.go')

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
require('lsp.bash-ls')
require('lsp.css-ls')
require('lsp.docker-ls')
require('lsp.emmet-ls')
require('lsp.go-ls')
require('lsp.html-ls')
require('lsp.json-ls')
require('lsp.js-ts-ls')
-- require('lsp.kotlin-ls')
require('lsp.latex-ls')
require('lsp.lua-ls')
-- require('lsp.php-ls')
require('lsp.python-ls')
-- require('lsp.ruby-ls')
require('lsp.rust-ls')
-- require('lsp.svelte-ls')
-- require('lsp.terraform-ls')
-- require('lsp.tailwindcss-ls')
-- require('lsp.vue-ls')
require('lsp.yaml-ls')
-- require('lsp.elixir-ls')
require('term')

require("lsp_signature").setup()
