return {
  'mason-org/mason-lspconfig.nvim',
  opts = {},
  dependencies = {
    { 'mason-org/mason.nvim', opts = {} },
    'neovim/nvim-lspconfig',
  },
  config = function()
    vim.lsp.config('lua_ls', {
      settings = {
        Lua = {
          diagnostics = {
            globals = {
              'vim',
              'require',
              'Snacks',
            },
          },
        },
      },
    })
    vim.lsp.enable 'lua_ls'
    vim.lsp.enable 'clangd'
    vim.lsp.enable 'basedpyright'
    vim.lsp.enable 'ltex_plus'
    vim.lsp.enable 'markdown_oxide'
    vim.lsp.enable 'mutt_ls'
    vim.lsp.enable 'html'
    vim.lsp.enable 'copilot'
    vim.diagnostic.config {
      virtual_lines = {
        current_line = true,
      },
    }
  end,
}
