local lspconfig = require("lspconfig")
local configs = require "nvchad.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

return {
  lspconfig.basedpyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = "standard",
        },
      }
    }
  }
}
