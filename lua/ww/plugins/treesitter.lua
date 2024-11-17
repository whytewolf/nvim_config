return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},

			indent = { enable = true },

			autotag = {
				enable = true,
			},

			sync_install = true,
			auto_install = true,

			ensure_installed = {
				"vim",
				"vimdoc",
				"lua",
				"luadoc",
				"toml",
				"yaml",
				"json",
				"markdown_inline",
				"markdown",
				"bash",
				"regex",
				"gitignore",
				"c",
				"python",
				"scss",
				"tmux",
				"go",
				"css",
				"html",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
