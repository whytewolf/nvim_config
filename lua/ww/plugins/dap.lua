return {
	{
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

			keymap.set("n", "<leader>dr", function()
				dap.continue()
			end, { desc = "Debug Run" })

			keymap.set("n", "<leader>dso", function()
				dap.step_over()
			end, { desc = "Step Over function" })
			keymap.set("n", "<leader>dsi", function()
				dap.step_into()
			end, { desc = "Step Into function" })
			keymap.set("n", "<leader>dst", function()
				dap.step_out()
			end, { desc = "Step Out of function" })

			keymap.set("n", "<leader>dbt", function()
				dap.toggle_breakpoint()
			end, { desc = "toggle breakpoint" })
			keymap.set("n", "<leader>dbs", function()
				dap.set_breakpoint()
			end, { desc = "set breakpoint" })

			keymap.set("n", "<leader>df", function()
				dwidgts.centered_float(dwidgts.frames)
			end, { desc = "display frames" })
			keymap.set("n", "<leader>dS", function()
				dwidgts.centered_float(dwidgts.scopes)
			end, { desc = "display Scopes" })
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = { "python" },
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(path)
			table.insert(require("dap").configurations.python, {
				justMyCode = false,
				type = "python",
				request = "launch",
				name = "python with arugments",
				program = "${file}",
				args = function()
					local args_str = vim.fn.input("Arguments: ")
					return vim.split(args_str, " ")
				end,
			})
		end,
	},
}
