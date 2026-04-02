return {
  'neovim/nvim-lspconfig',
  lazy = false,
  opts = {},
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
    vim.lsp.enable({ 'lua_ls', 'clangd', 'basedpyright', 'ltex_plus', 'markdown_oxide', 'mutt_ls', 'html', 'copilot' })
    vim.diagnostic.config {
      virtual_lines = {
        current_line = true,
      },
    }
  end,
}
