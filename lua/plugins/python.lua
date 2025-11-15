return {
  ---@module 'python'
  {
    'joshzcold/python.nvim',
    dependencies = {
      { 'mfussenegger/nvim-dap' },
      { 'mfussenegger/nvim-dap-python' },
      { 'neovim/nvim-lspconfig' },
      { 'nvim-neotest/neotest' },
      { 'nvim-neotest/neotest-python' },
    },
    opts = { ---@diagnostic disable-line: missing-fields`
    },
  },
}
