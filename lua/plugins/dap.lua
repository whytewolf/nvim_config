local dap = require 'dap'
local dapui = require 'dapui'

dap.configurations.lua = {
  {
    name = 'Launch file',
    type = 'local-lua',
    request = 'launch',
    cwd = '${workspaceFolder}',
    program = {
      lua = 'lua5.1',
      file = '${file}',
    },
    args = {},
  },
}
dap.adapters['local-lua'] = {
  type = 'executable',
  command = 'node',
  args = {
    '/usr/lib/node_modules/local-lua-debugger-vscode/extension/debugAdapter.js',
  },
  enrich_config = function(config, on_config)
    if not config['extensionPath'] then
      local c = vim.deepcopy(config)
      c.extensionPath = '/usr/lib/node_modules/local-lua-debugger-vscode/'
      on_config(c)
    else
      on_config(config)
    end
  end,
}
dapui.setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end
