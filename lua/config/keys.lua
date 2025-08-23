local dap = require 'dap'
local dapui = require 'dapui'
local dwidgts = require 'dap.ui.widgets'
local keymap = vim.keymap

-- dap keymaps
keymap.set('n', '<leader>do', function()
  dapui.open()
end, { desc = 'Open debugging UI' })

keymap.set('n', '<leader>dc', function()
  dapui.close()
end, { desc = 'Close debugging UI' })

keymap.set('n', '<f6>', function()
  dap.step_over()
end, { desc = 'Step Over function' })
keymap.set('n', '<f7>', function()
  dap.step_into()
end, { desc = 'Step Into function' })
keymap.set('n', '<f8>', function()
  dap.step_out()
end, { desc = 'Step Out of function' })

keymap.set('n', '<leader>db', function()
  dap.toggle_breakpoint()
end, { desc = 'toggle breakpoint' })

keymap.set('n', '<leader>df', function()
  dwidgts.centered_float(dwidgts.frames)
end, { desc = 'display frames' })
keymap.set('n', '<leader>dS', function()
  dwidgts.centered_float(dwidgts.scopes)
end, { desc = 'display Scopes' })

-- rustaceanvim keymaps
keymap.set('n', '<leader>rrun', function()
  vim.cmd.RustLsp 'runnables'
end, { desc = 'Runnables' })
keymap.set('n', '<leader>ru', function()
  vim.cmd.RustLsp('moveItem', 'up')
end, { desc = 'move item up' })
keymap.set('n', '<leader>rd', function()
  vim.cmd.RustLsp('moveItem', 'down')
end, { desc = 'move item down' })
keymap.set('n', '<leader>rha', function()
  vim.cmd.RustLsp('hover', 'actions')
end, { desc = 'Hover Actions' })
keymap.set('n', '<leader>rhr', function()
  vim.cmd.RustLsp('hover', 'range')
end, { desc = 'Hover Range' })
keymap.set('n', '<leader>re', function()
  vim.cmd.RustLsp 'explainError'
end, { desc = 'Explain Error' })
keymap.set('n', '<leader>rrD', function()
  vim.cmd.RustLsp 'renderDiagnostic'
end, { desc = 'Toggle Inlay Hints' })
keymap.set('n', '<leader>rc', function()
  vim.cmd.RustLsp 'openCargo'
end, { desc = 'Open Cargo' })
keymap.set('n', '<leader>rj', function()
  vim.cmd.RustLsp 'joinLines'
end, { desc = 'Join Lines' })
keymap.set('n', '<leader>rs', function()
  vim.cmd.RustLsp('ssr', '<query>')
end, { desc = 'Search and replace' })
keymap.set('n', '<leader>rS', function()
  vim.cmd.RustLsp 'syntaxTree'
end, { desc = 'syntax Tree' })

keymap.set('n', '<leader>?', function()
  require('which-key').show { global = false }
end, { desc = 'Buffer Local Keymaps (which-key)' })
