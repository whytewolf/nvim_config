local dap_plugs = {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    vim.keymap.set('n','<F6>', function() require('dapui').open() end),
    vim.keymap.set('n','<F7>', function() require('dapui').close() end),
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

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
    end,
  },
  {
    "mfussenegger/nvim-dap",
    vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = "start run"}),
    vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = "step over fnction"}),
    vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = "step into function"}),
    vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = "step over function"}),
    vim.keymap.set('n','<leader>dbt', function()  require('dap').toggle_breakpoint() end, { desc = "toggle breakpoint"}),
    vim.keymap.set('n', '<leader>dbs', function() require('dap').set_breakpoint() end, { desc = "set breakpoint"}),
    vim.keymap.set({'n','v'}, '<leader>dh', function() require('dap.ui.widgets').hover() end),
    vim.keymap.set({'n', 'v'}, '<Leader>dp', function() require('dap.ui.widgets').preview() end),
    vim.keymap.set('n', '<Leader>df', function() require('dap.ui.widgets').centered_float(require('dap.ui.widgets').frames) end),
    vim.keymap.set('n', '<Leader>ds', function() require('dap.ui.widgets').centered_float(require('dap.ui.widgets').scopes) end),
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencis = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}

return dap_plugs
