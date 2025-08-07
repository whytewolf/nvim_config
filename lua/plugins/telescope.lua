return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
    'nvim-telescope/telescope-github.nvim',
  },
  config = function()
    local telescope = require 'telescope'
    local actions = require 'telescope.actions'

    telescope.setup {
      defaults = {
        path_display = { 'smart' },
        mappings = {
          i = {
            ['<C-k>'] = actions.move_selection_previous,
            ['<C-j>'] = actions.move_selection_next,
            ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    }

    telescope.load_extension 'fzf'
    telescope.load_extension 'gh'
    telescope.load_extension 'nerdy'

    local keymap = vim.keymap

    keymap.set('n', '<leader>tgi', '<cmd>Telescope gh issues<cr>', { desc = 'Github issues' })
    keymap.set('n', '<leader>tgp', '<cmd>Telescope gh pull_request<cr>', { desc = 'Github PR View' })
    keymap.set('n', '<leader>tgg', '<cmd>Telescope gh gist<cr>', { desc = 'Github gists' })
    keymap.set('n', '<leader>tgw', '<cmd>Telescope gh run<cr>', { desc = 'Github workflow runs' })
    keymap.set('n', '<leader>tgs', '<cmd>Telescope gh secret<cr>', { desc = 'Github repo Secrets' })
  end,
}
