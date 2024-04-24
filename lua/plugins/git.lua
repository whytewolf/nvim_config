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
    "hougesen/blame-me.nvim",
    event = "BufRead",
    opts = {
      signs = false,
      delay = 200,
    }
  },
  { "kdheepak/lazygit.nvim",
    	cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	},
        -- optional for floating window border decoration
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = function()
          require("telescope").load_extension("lazygit")
        end,
        -- setting the keybinding for LazyGit with 'keys' is recommended in
        -- order to load the plugin when the command is run for the first time
        keys = {
           { "<leader>git", "<cmd>LazyGit<cr>", desc = "LazyGit" }
        }
  }
}

return git_plugins
