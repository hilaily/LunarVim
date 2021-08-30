-- source plugin config

require('pluginconfig/dashboard-nvim')
require('pluginconfig/galaxyline')
require('pluginconfig/git-blame')
require('pluginconfig/gitsigns')
require('pluginconfig/lspinstall')
require('pluginconfig/numb')
require('pluginconfig/nvim-compe')
require('pluginconfig/nvim-tree') -- This plugin must be required somewhere before colorscheme.  Placing it after will break navigation keymappings
require('pluginconfig/nvim-treesitter')
require('pluginconfig/symbols-outline')
require('pluginconfig/telescope')
require('pluginconfig/toggleterm')
require('pluginconfig/vim-matchup')
require('pluginconfig/which-key')


-- nvim_comment
require('nvim_comment').setup()

-- lsp-rooter
require("lsp-rooter").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

-- lsp signature
require("lsp_signature").setup()
