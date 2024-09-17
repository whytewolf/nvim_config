return {
	"MeanderingProgrammer/render-markdown.nvim",
	opts = {},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "markdown" },
	config = function()
		require("render-markdown").setup({
			filetype = "markdown",
		})
		require("render-markdown").enable()
	end,
}
