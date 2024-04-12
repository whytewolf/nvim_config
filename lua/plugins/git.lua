local git_plugins = {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-github.nvim",
      config = function()
        require('telescope').load_extension('gh')
      end,
    },
  }
}

return git_plugins
