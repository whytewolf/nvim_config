return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
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
    },
    auto_install = true,
  },
}
