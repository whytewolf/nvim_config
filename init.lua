require("ww.core")
require("ww.lazy")
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.tcss" },
	callback = function()
		vim.cmd("set filetype=scss")
	end,
})
