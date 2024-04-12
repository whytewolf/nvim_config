local lspconfig = require("lspconfig")

return {
  lspconfig.basedpyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = "standard"
        }
      }
    }
  }
}
