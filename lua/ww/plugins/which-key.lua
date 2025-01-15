return {
	"folke/which-key.nvim",
	version = "3",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	opts = {
		-- default opts
	},
}
