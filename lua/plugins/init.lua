vim.pack.add({ {src = "https://github.com/jtprogru/pack-ui.nvim"}})

require("plugins.pack_gui")

vim.pack.add({
	'https://github.com/ibhagwan/fzf-lua',
  'https://github.com/stevearc/aerial.nvim',
  'https://github.com/nvim-treesitter/nvim-treesitter',
	'https://github.com/folke/snacks.nvim',
	'https://github.com/folke/which-key.nvim',
	'https://github.com/nvim-tree/nvim-web-devicons',
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/rafamadriz/friendly-snippets',
	'https://github.com/mikavilpas/blink-ripgrep.nvim',
	'https://github.com/L3MON4D3/LuaSnip',
	'https://github.com/moyiz/blink-emoji.nvim',
	'https://github.com/saghen/blink.lib',
	'https://github.com/saghen/blink.cmp',
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/folke/sidekick.nvim',
  'https://github.com/rcarriga/nvim-dap-ui',
  'https://github.com/mfussenegger/nvim-dap',
  'https://github.com/nvim-neotest/nvim-nio',
  {
    src = 'https://github.com/mrcjkb/rustaceanvim',
    version = vim.version.range('^9')
  },
  'https://github.com/nvim-neotest/neotest',
  'https://github.com/antoinemadec/FixCursorHold.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/nvim-neotest/neotest-plenary',
  'https://github.com/nvim-neotest/neotest-vim-test',
  'https://github.com/rachartier/tiny-glimmer.nvim',
  'https://github.com/bjarneo/pixel.nvim',
  'https://github.com/sphamba/smear-cursor.nvim',
  'https://github.com/nvim-lualine/lualine.nvim',
  'https://github.com/folke/trouble.nvim',
  'https://github.com/folke/noice.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/rcarriga/nvim-notify',
  'https://github.com/mr-u0b0dy/crazy-coverage.nvim',
  'https://github.com/mason-org/mason.nvim',
  'https://github.com/atiladefreitas/dooing',
})

require("plugins.aerial")
require("plugins.lspconfig")
require("plugins.treesitter")
require("plugins.snacks")
require("plugins.trouble")
require("plugins.blink")
require("plugins.oil")
require("plugins.sidekick")
require("plugins.dap")
require("plugins.animations")
require("plugins.neotest")
require("plugins.pixel")
require("plugins.smear")
require("plugins.lualine")
require("plugins.noice")
require("plugins.cov")
require("plugins.mason")
require("plugins.dooing")
