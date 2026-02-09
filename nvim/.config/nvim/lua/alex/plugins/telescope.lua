return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"andrew-george/telescope-themes",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local builtin = require("telescope.builtin")

		telescope.load_extension("fzf")
		telescope.load_extension("themes")

		telescope.setup({
			defaults = {
				path_display = "smart",
				preview = {
					treesitter = false,
				},
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous,
						["<C-j>"] = actions.move_selection_next,
					},
				},
				extensions = {
					themes = {
						enable_previewer = true,
						enable_live_preview = true,
						persist = {
							enable = true,
							path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
						},
					},
				},
				file_ignore_patterns = {
					"^node_modules/",
					"build/",
					"dist/",
					"yarn.lock",
					"^bin/",
					"^.idea/",
				},
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>pWs", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ searh = word })
		end, { desc = "Find Connected Words under cursor" })
		vim.keymap.set(
			"n",
			"<leader>ths",
			"<cmd>Telescope themes<CR>",
			{ noremap = true, silent = true, desc = "Theme Switcher" }
		)
	end,
}
