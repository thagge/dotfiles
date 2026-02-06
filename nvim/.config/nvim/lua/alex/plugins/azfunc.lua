return {
	"fschaal/azfunc.nvim",
	dependencies = { "mfussenegger/nvim-dap" },
	config = function()
		require("azfunc").setup({
			mappings = {
				start = "<leader>fs",
				stop = "<leader>fS",
			},
		})
	end,
}
