return {
	"folke/tokyonight.nvim",
	version = "4",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "night",
		})
		vim.cmd("colorscheme tokyonight")
	end,
}
