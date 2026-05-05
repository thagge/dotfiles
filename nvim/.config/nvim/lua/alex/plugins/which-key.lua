vim.pack.add({
	{
		src = "https://github.com/folke/which-key.nvim",
		data = {
			event = "VeryLazy",
			keys = {
				{
					"<leader>?",
					function()
						require("which-key").show({ global = false })
					end,
					desc = "Buffer Local Keymaps (which-key)",
				},
			},
		}
	}
})

require("which-key").setup()
