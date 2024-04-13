local git_plugins = {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-github.nvim",
      config = function()
        require('telescope').load_extension('gh')
      end,
    },
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    dependencies = {
      "tpope/vim-rhubarb",
      "tpope/vim-obsession",
      "tpope/vim-unimpaired",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function ()
      require("gitsigns").setup({
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "󰍵" },
          topdelete = { text = "‾" },
          changedelete = { text = "~" },
          untracked = { text = "│" },
        },
        signcolumn = true,
      })
    end,
  },
  {
    'hougesen/blame-me.nvim',
  },
}

return git_plugins
