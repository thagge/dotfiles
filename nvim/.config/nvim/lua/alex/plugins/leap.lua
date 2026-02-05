return {
	"https://codeberg.org/andyg/leap.nvim",
	event = "VeryLazy",
	config = function()
		vim.keymap.set({ "n", "x", "o" }, "<leader>h", "<Plug>(leap)", { desc = "Leap to clonest char by 2" })
		vim.keymap.set(
			"n",
			"<leader>H",
			"<Plug>(leap-from-window)",
			{ desc = "Leap to clonest char by 2 in all windows" }
		)
	end,
}
