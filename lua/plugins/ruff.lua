local configs = require "nvchad.configs.lspconfig"
local on_attach = configs.on_attach


local ruffruff = {
  "astral-sh/ruff-lsp",
  require('lspconfig').ruff_lsp.setup {
    on_attach = on_attach,
    init_options = {
      settings = {
        -- Any extra CLI arguments for `ruff` go here.
        args = {},
      }
    }
  }
}

return ruffruff
