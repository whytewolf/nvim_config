local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = {"isort", "black"}
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
  format_on_save = {
    lsp_fallback = true,
    async = false,
    timeout_ms = 500
  }
}

require("conform").setup(options)
