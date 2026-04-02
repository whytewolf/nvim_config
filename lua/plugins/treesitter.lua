return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter'

    configs.setup {
      install_dir = vim.fn.stdpath('data') .. '/site'
    }
    configs.install({
        'c',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'elixir',
        'javascript',
        'python',
        'html',
        'css',
        'latex',
        'scss',
        'regex',
        'svelte',
        'norg',
        'tsx',
        'typst',
        'vue'
    })
  end,
}
