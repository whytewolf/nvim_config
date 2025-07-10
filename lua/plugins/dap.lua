return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      local dwidgts = require("dap.ui.widgets")
      local keymap = vim.keymap

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
      keymap.set("n", "<leader>do", function()
        dapui.open()
      end, { desc = "Open debugging UI" })
  		keymap.set("n", "<leader>dc", function()
	  		dapui.close()
		  end, { desc = "Close debugging UI" })

  		keymap.set("n", "<f6>", function()
	  		dap.step_over()
      end, { desc = "Step Over function" })
  		keymap.set("n", "<f7>", function()
	  		dap.step_into()
      end, { desc = "Step Into function" })
  		keymap.set("n", "<f8>", function()
	  		dap.step_out()
      end, { desc = "Step Out of function" })

  		keymap.set("n", "<leader>db", function()
	  		dap.toggle_breakpoint()
      end, { desc = "toggle breakpoint" })

  		keymap.set("n", "<leader>df", function()
	  		dwidgts.centered_float(dwidgts.frames)
      end, { desc = "display frames" })
  		keymap.set("n", "<leader>dS", function()
	  		dwidgts.centered_float(dwidgts.scopes)
      end, { desc = "display Scopes" })
    end,
}
