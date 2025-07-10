return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "c",
	"lua",
	"vim",
	"vimdoc",
	"query",
	"elixir",
	"javascript",
	"python",
	"html",
	"css",
	"latex",
	"scss",
	"regex",
	"svelte",
	"norg",
	"tsx",
	"typst",
	"vue",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = {enable = true},
    })
    end
}
