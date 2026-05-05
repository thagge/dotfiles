vim.pack.add({ "https://github.com/mfussenegger/nvim-dap", "https://github.com/fschaal/azfunc.nvim" },
	{ confirm = false })


require("azfunc").setup({
	mappings = {
		start = "<leader>fs",
		stop = "<leader>fS",
	},
})
