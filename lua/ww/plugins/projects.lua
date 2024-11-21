return {
	"ahmedkhalf/project.nvim",
	config = function()
		require("project_nvim").setup({
			manual_mode = false,
			detection_methods = { "pattern", "lsp" },
			patterns = { ".git", "pyproject.toml", "_darcs", ".hg", ".bzr", ".svn", "package.json", "Cargo.toml" },
			show_hidden = false,
			silent_chdir = true,
		})
	end,
}
