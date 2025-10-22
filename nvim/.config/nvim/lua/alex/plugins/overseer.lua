return {
	"stevearc/overseer.nvim",
	config = function()
		require("overseer").setup({
			templates = { "builtin", "user.cpp_build", "user.cpp_build_and_run" },
		})

		vim.keymap.set("n", "<leader>cr", "<cmd>OverseerRun<CR>", { desc = "Show overseer tasks" })
	end,
}
