return {
	"nvim-telescope/telescope.nvim",
	banch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-github.nvim",
		"nvim-telescope/telescope-dap.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("gh")
		telescope.load_extension("dap")
		telescope.load_extension("projects")

		local keymap = vim.keymap

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Fuzzy string under curser" })
		keymap.set("n", "<leader>tgi", "<cmd>Telescope gh issues<cr>", { desc = "Github issues" })
		keymap.set("n", "<leader>tgp", "<cmd>Telescope gh pull_request<cr>", { desc = "Github PR View" })
		keymap.set("n", "<leader>tgg", "<cmd>Telescope gh gist<cr>", { desc = "Github gists" })
		keymap.set("n", "<leader>tgw", "<cmd>Telescope gh run<cr>", { desc = "Github workflow runs" })
		keymap.set("n", "<leader>tgs", "<cmd>Telescope gh secret<cr>", { desc = "Github repo Secrets" })
		keymap.set("n", "<leader>tdcom", "<cmd>Telescope dap commands<cr>", { desc = "DAP commands" })
		keymap.set("n", "<leader>tdcon", "<cmd>Telescope dap configurations<cr>", { desc = "DAP configurations" })
		keymap.set("n", "<leader>tdb", "<cmd>Telescope dap list_breakpoints<cr>", { desc = "DAP Breakpoints" })
		keymap.set("n", "<leader>tdv", "<cmd>Telescope dap variables<cr>", { desc = "DAP Variables" })
		keymap.set("n", "<leader>tdf", "<cmd>Telescope dap frames<cr>", { desc = "DAP Frames" })
		keymap.set("n", "<leader>tp", "<cmd>Telescope projects<cr>", { desc = "Projects" })
	end,
}
