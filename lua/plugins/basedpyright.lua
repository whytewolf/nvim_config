local lspconfig = require("lspconfig")
local configs = require "nvchad.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities
local typeChecking = function()
  if string.find(vim.fn.getcwd(), "salt") then
    return "standard"
  else
    return "all"
  end

end


return {
  lspconfig.basedpyright.setup{
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = typeChecking(),
        },
      }
    }
  }
}
