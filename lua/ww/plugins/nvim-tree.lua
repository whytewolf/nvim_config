return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			git = {
				ignore = true,
			},
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "Toggle file explorer on current file" }
		)
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" })
	end,
}
