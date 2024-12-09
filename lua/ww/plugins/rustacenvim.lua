return {
	"mrcjkb/rustaceanvim",
	version = "^5",
	lazy = false,
	config = function()
		local keymap = vim.keymap
		vim.g.rustacean_vim_autosave = 1

		keymap.set("n", "<leader>rrun", function()
			vim.cmd.RustLsp("runnables")
		end, { desc = "Runnables" })
		keymap.set("n", "<leader>ru", function()
			vim.cmd.RustLsp("moveItem", "up")
		end, { desc = "move item up" })
		keymap.set("n", "<leader>rd", function()
			vim.cmd.RustLsp("moveItem", "down")
		end, { desc = "move item down" })
		keymap.set("n", "<leader>rha", function()
			vim.cmd.RustLsp("hover", "actions")
		end, { desc = "Hover Actions" })
		keymap.set("n", "<leader>rhr", function()
			vim.cmd.RustLsp("hover", "range")
		end, { desc = "Hover Range" })
		keymap.set("n", "<leader>re", function()
			vim.cmd.RustLsp("explainError")
		end, { desc = "Explain Error" })
		keymap.set("n", "<leader>rrD", function()
			vim.cmd.RustLsp("renderDiagnostic")
		end, { desc = "Toggle Inlay Hints" })
		keymap.set("n", "<leader>rc", function()
			vim.cmd.RustLsp("openCargo")
		end, { desc = "Open Cargo" })
		keymap.set("n", "<leader>rj", function()
			vim.cmd.RustLsp("joinLines")
		end, { desc = "Join Lines" })
		keymap.set("n", "<leader>rs", function()
			vim.cmd.RustLsp("ssr", "<query>")
		end, { desc = "Search and replace" })
		keymap.set("n", "<leader>rS", function()
			vim.cmd.RustLsp("syntaxTree")
		end, { desc = "syntax Tree" })
	end,
}
