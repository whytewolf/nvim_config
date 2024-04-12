return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "basedpyright",
      "black",
      "ruff-lsp",
      "mypy",
      "yamllint",
      "isort",
      "debugpy",
    },
  },
}
