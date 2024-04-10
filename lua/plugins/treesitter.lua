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
    },
    auto_install = true,
  },
}
