require('pluginconfig/nvim-tree') -- This plugin must be required somewhere before colorscheme.  Placing it after will break navigation keymappings
require('pluginconfig/nvim-compe')
require('pluginconfig/which-key')
require('pluginconfig/nvim-treesitter')
require('pluginconfig/dashboard-nvim')
require('pluginconfig/git-blame')
require('pluginconfig/telescope')
require('pluginconfig/toggleterm')
require('pluginconfig/lspinstall')
require('pluginconfig/galaxyline')
require('pluginconfig/gitsigns')
require('pluginconfig/numb')
require('pluginconfig/symbols-outline')


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
