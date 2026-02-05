return {
	-- Debug Framework
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local dap = require("dap")

		local map = vim.keymap.set

		local opts = { noremap = true, silent = true }

		map("n", "<F5>", dap.continue, { desc = "DAP: Continue/Start" })
		map("n", "<F6>", function()
			require("neotest").run.run({ strategy = "dap" })
		end, opts)
		map("n", "<F9>", dap.toggle_breakpoint, opts)
		map("n", "<F10>", dap.step_over, opts)
		map("n", "<F11>", dap.step_into, opts)
		map("n", "<F8>", dap.step_out, opts)
		-- map("n", "<F12>", "<Cmd>lua require'dap'.step_out()<CR>", opts)
		map("n", "<leader>dr", dap.repl.open, opts)
		map("n", "<leader>dl", dap.run_last, opts)
		map("n", "<leader>dt", function()
			require("neotest").run.run({ strategy = "dap" })
		end, { noremap = true, silent = true, desc = "debug nearest test" })
	end,
	event = "VeryLazy",
}
