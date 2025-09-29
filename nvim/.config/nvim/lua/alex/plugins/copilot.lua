return {
	"zbirenbaum/copilot.lua",
	requires = {
		"copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
	},
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<C-y>",
					accept_word = false,
					accept_line = false,
					next = "<C-n>",
					prev = "<C-p>",
					dismiss = "<C-e>",
				},
			},
			nes = {
				enabled = true,
				keymap = {
					accept_and_goto = "<leader>p",
					accept = false,
					dismiss = "<Esc>",
				},
			},
		})
	end,
}
