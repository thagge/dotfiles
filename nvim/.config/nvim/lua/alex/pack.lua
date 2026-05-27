local plugins = {
	{ src = "hrsh7th/cmp-buffer" },
	{ src = "hrsh7th/cmp-path" },
	{ src = "f3fora/cmp-spell" },
	{
		src = "L3MON4D3/LuaSnip",
		-- follow latest release.
		branch = "v2.5", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	{ src = "kevinhwang91/promise-async" },
	{ src = "saadparwaiz1/cmp_luasnip" },
	{ src = "andrew-george/telescope-themes" },
	{ src = "rafamadriz/friendly-snippets" },
	{ src = "nvim-treesitter/nvim-treesitter" },
	{ src = "onsails/lspkind.nvim" },
	{ src = "romgrk/fzy-lua-native" },
	{ src = "NvChad/nvim-colorizer.lua" },
	{ src = "roobert/tailwindcss-colorizer-cmp.nvim" },
	{ src = "MunifTanjim/nui.nvim" },
	{ src = "nvim-treesitter/nvim-treesitter" },
	{ src = "antoinemadec/FixCursorHold.nvim" },
	{ src = "nvim-neotest/nvim-nio" },
	{ src = "echasnovski/mini.nvim" },
	{ src = "JoosepAlviste/nvim-ts-context-commentstring" },
	{ src = "nvim-tree/nvim-web-devicons" },
	{ src = "nvim-lua/plenary.nvim" },
	{ src = "nvim-telescope/telescope.nvim" },
	{ src = "hrsh7th/nvim-cmp" },
	{ src = "antosha417/nvim-lsp-file-operations", config = true },
	{ src = "williamboman/mason-lspconfig.nvim" },
	{ src = "WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "hrsh7th/cmp-nvim-lsp" },
	{ src = "neovim/nvim-lspconfig" },
	{ src = "williamboman/mason.nvim" },
	{ src = "windwp/nvim-autopairs" },
	{ src = "windwp/nvim-autopairs", event = { "InsertEnter" } },
	{ src = "mfussenegger/nvim-dap", event = "VeryLazy" },
	{ src = "fschaal/azfunc.nvim" },
	{ src = "CRAG666/betterTerm.nvim" },
	{ src = "CRAG666/code_runner.nvim" },
	{ src = "rose-pine/neovim" },
	{ src = "ellisonleao/gruvbox.nvim" },
	{ src = "rebelot/kanagawa.nvim" },
	{ src = "folke/tokyonight.nvim" },
	{ src = "craftzdog/solarized-osaka.nvim" },
	{ src = "mrxiaozhuox/dioxus.nvim", opts = {
		format = {
			split_line_attributes = true,
		},
	}, ft = "rust" },
	{ src = "ramboe/ramboe-dotnet-utils" },
	{ src = "GustavEikaas/easy-dotnet.nvim" },
	{ src = "olrtg/nvim-emmet" },
	{ src = "stevearc/conform.nvim", event = { "BufReadPre", "BufNewFile" } },
	{ src = "tpope/vim-fugitive" },
	{
		src = "lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			on_attach = function(bufnr)
				local gs = package.loaded.gitsigns
				local function map(mode, l, r, desc)
					vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
				end

				map("n", "<leader>gs", gs.stage_hunk, "Stage hunk")
				map("n", "<leader>gr", gs.reset_hunk, "Reset hunk")

				map("v", "<leader>gs", function()
					gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, "Stage hunk")
				map("v", "<leader>gr", function()
					gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end, "Reset hunk")

				map("n", "<leader>gS", gs.stage_buffer, "Stage buffer")
				map("n", "<leader>gR", gs.reset_buffer, "Reset buffer")

				map("n", "<leader>gu", gs.undo_stage_hunk, "Undo stage hunk")
				map("n", "<leader>gp", gs.preview_hunk, "Preview hunk")

				map("n", "<leader>gbl", function()
					gs.blame_line({ full = true })
				end, "Blame line")
				map("n", "<leader>gB", gs.toggle_current_line_blame, "Toggle line blame")

				map("n", "<leader>gd", gs.diffthis, "Diff this")
				map("n", "<leader>gD", function()
					gs.diffthis("~")
				end, "Diff this ~")

				--Navigation
				map("n", "]h", gs.next_hunk, "Next hunk")
				map("n", "[h", gs.prev_hunk, "Prev hunk")

				map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
			end,
		},
	},
	{ src = "ThePrimeagen/git-worktree.nvim" },
	{
		src = "HakonHarnes/img-clip.nvim",
		event = "VeryLazy",
		opts = {
			default = {
				insert_mode_after_paste = true,
				url_encode_path = true,
				template = "$FILE_PATH",
				use_cursor_in_template = true,

				prompt_for_file_name = true,
				show_dir_path_in_prompt = true,

				use_absolute_path = false,
				relative_to_current_file = true,

				embed_image_as_base64 = false,
				max_base64_size = 10,

				dir_path = function()
					local cwd = vim.fn.getcwd()
					local vault_name = "Westkustdev" -- obsidian vault dir
					local vault_images_path = "Archives/All-Vault-Images/"

					if cwd:match(vault_name) then
						return vault_images_path
					else
						return "assets"
					end
				end,

				drag_and_drop = {
					enabled = true,
					insert_mode = true,
					copy_images = true,
					download_images = true,
				},
			},
			-- add options here
			-- or leave it empty to use the default settings
		},
	},
	{ src = "b0o/incline.nvim" },
	{ src = "MysticalDevil/inlay-hints.nvim" },
	{ src = "mfussenegger/nvim-lint", event = { "BufReadPre", "BufNewFile" } },
	{ src = "nvim-lualine/lualine.nvim" },
	{ src = "echasnovski/mini.comment" },
	{ src = "echasnovski/mini.files" },
	{
		src = "echasnovski/mini.surround",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			-- Add custom surroundings to be used on top of builtin ones. For more
			-- information with examples, see `:h MiniSurround.config`.
			custom_surroundings = nil,

			-- Duration (in ms) of highlight when calling `MiniSurround.highlight()`
			highlight_duration = 300,

			-- Module mappings. Use `''` (empty string) to disable one.
			-- INFO:
			-- saiw surround with no whitespace
			-- saw surround with whitespace
			mappings = {
				add = "sa", -- Add surrounding in Normal and Visual modes
				delete = "ds", -- Delete surrounding
				find = "sf", -- Find surrounding (to the right)
				find_left = "sF", -- Find surrounding (to the left)
				highlight = "sh", -- Highlight surrounding
				replace = "sr", -- Replace surrounding
				update_n_lines = "sn", -- Update `n_lines`

				suffix_last = "l", -- Suffix to search with "prev" method
				suffix_next = "n", -- Suffix to search with "next" method
			},

			-- Number of lines within which surrounding is searched
			n_lines = 20,

			-- Whether to respect selection type:
			-- - Place surroundings on separate lines in linewise mode.
			-- - Place surroundings on each line in blockwise mode.
			respect_selection_type = false,

			-- How to search for surrounding (first inside current line, then inside
			-- neighborhood). One of 'cover', 'cover_or_next', 'cover_or_prev',
			-- 'cover_or_nearest', 'next', 'prev', 'nearest'. For more details,
			-- see `:h MiniSurround.config`.
			search_method = "cover",

			-- Whether to disable showing non-error feedback
			silent = false,
		},
	},
	{ src = "echasnovski/mini.trailspace", event = { "BufReadPost", "BufNewFile" } },
	{ src = "echasnovski/mini.splitjoin" },
	{ src = "folke/noice.nvim", event = "VeryLazy" },
	{ src = "rcarriga/nvim-dap-ui" },
	{ src = "kevinhwang91/nvim-ufo" },
	{
		src = "epwalsh/obsidian.nvim",
		ft = "markdown",
		opts = {
			workspaces = {
				{
					name = "Westkustdev",
					path = "/home/alex/Obsidian/Zettelkasten",
				},
			},
			notes_subdir = "inbox",
			new_notes_location = "notes_subdir",

			disable_frontmatter = true,
			templates = {
				subdir = "templates",
				date_format = "%Y-%m-%d",
				time_format = "%H:%M:%S",
			},

			-- name new notes starting the ISO datetime and ending with note name
			-- put them in the inbox subdir
			-- note_id_func = function(title)
			--   local suffix = ""
			--   -- get current ISO datetime with -5 hour offset from UTC for EST
			--   local current_datetime = os.date("!%Y-%m-%d-%H%M%S", os.time() - 5*3600)
			--   if title ~= nil then
			--     suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
			--   else
			--     for _ = 1, 4 do
			--       suffix = suffix .. string.char(math.random(65, 90))
			--     end
			--   end
			--   return current_datetime .. "_" .. suffix
			-- end,

			-- key mappings, below are the defaults
			mappings = {
				-- overrides the 'gf' mapping to work on markdown/wiki links within your vault
				["gf"] = {
					action = function()
						return require("obsidian").util.gf_passthrough()
					end,
					opts = { noremap = false, expr = true, buffer = true },
				},
				-- toggle check-boxes
				["<leader>ti"] = {
					action = function()
						return require("obsidian").util.toggle_checkbox()
					end,
					opts = { buffer = true },
				},
			},
			completion = {
				nvim_cmp = true,
				min_chars = 2,
			},
			ui = {
				-- Disable some things below here because I set these manually for all Markdown files using treesitter
				checkboxes = {},
				bullets = {},
			},
		},
	},
	{ src = "stevearc/oil.nvim" },
	{ src = "mrcjkb/rustaceanvim" },
	{
		src = "nvzone/showkeys",
		cmd = "ShowkeysToggle",
		opts = {
			maxkeys = 3,
			show_count = true,
			winopts = {
				focusable = false,
				relative = "editor",
				style = "minimal",
				border = "single",
				height = 1,
				row = 1,
				col = 0,
			},
		},
	},
	{
		src = "sphamba/smear-cursor.nvim",
		opts = {
			-- Smear cursor when switching buffers or windows.
			smear_between_buffers = true,

			-- Smear cursor when moving within line or to neighbor lines.
			-- Use `min_horizontal_distance_smear` and `min_vertical_distance_smear` for finer control
			smear_between_neighbor_lines = true,

			-- Draw the smear in buffer space instead of screen space when scrolling
			scroll_buffer_space = true,

			-- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
			-- Smears and particles will look a lot less blocky.
			legacy_computing_symbols_support = false,

			-- Smear cursor in insert mode.
			-- See also `vertical_bar_cursor_insert_mode` and `distance_stop_animating_vertical_bar`.
			smear_insert_mode = true,
		},
	},
	{
		src = "folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		-- NOTE: Options
		opts = {
			styles = {
				input = {
					keys = {
						n_esc = { "<C-c>", { "cmp_close", "cancel" }, mode = "n", expr = true },
						i_esc = { "<C-c>", { "cmp_close", "stopinsert" }, mode = "i", expr = true },
					},
				},
			},
			-- Snacks Modules
			input = {
				enabled = true,
			},
			quickfile = {
				enabled = true,
				exclude = { "latex" },
			},
			-- HACK: read picker docs @ https://github.com/folke/snacks.nvim/blob/main/docs/picker.md
			picker = {
				enabled = true,
				matchers = {
					frecency = true,
					cwd_bonus = false,
				},
				formatters = {
					file = {
						filename_first = false,
						filename_only = false,
						icon_width = 2,
					},
				},
				layout = {
					-- presets options : "default" , "ivy" , "ivy-split" , "telescope" , "vscode", "select" , "sidebar"
					-- override picker layout in keymaps function as a param below
					preset = "telescope", -- defaults to this layout unless overidden
					cycle = false,
				},
				layouts = {
					telescope = {
						reverse = true, -- set to false for search bar to be on top
						layout = {
							box = "vertical",
							backdrop = false,
							width = 0.8,
							height = 0.9,
							border = "none",
							{
								box = "vertical",
								{
									win = "input",
									height = 1,
									border = "rounded",
									title = "{title} {live} {flags}",
									title_pos = "center",
								},
								{ win = "list", title = " Results ", title_pos = "center", border = "rounded" },
							},
							{
								win = "preview",
								title = "{preview:Preview}",
								height = 0.7,
								border = "rounded",
								title_pos = "center",
							},
						},
					},
				},
			},
			image = {
				enabled = true,
				doc = {
					float = true, -- show image on cursor hover
					inline = false, -- show image inline
					max_width = 50,
					max_height = 30,
					wo = {
						wrap = false,
					},
				},
				convert = {
					notify = true,
					command = "magick",
				},
				img_dirs = {
					"img",
					"images",
					"assets",
					"static",
					"public",
					"media",
					"attachments",
					"Archives/All-Vault-Images/",
					"~/Library",
					"~/Downloads",
				},
			},
			dashboard = {
				enabled = true,
				sections = {
					{ section = "header" },
					{ section = "keys", gap = 1, padding = 1 },
					{ section = "startup" },
					{
						section = "terminal",
						cmd = (function()
							local startPath
							local utils = require("alex.core.utils")
							if utils.getOsName() == "Windows" then
								startPath = "c:/Users/anils122"
							else
								startPath = "~"
							end
							return "ascii-image-converter " .. startPath .. "/images/me.png -C -c"
						end)(),
						random = 15,
						pane = 2,
						indent = 15,
						height = 20,
					},
				},
			},
		},
		-- NOTE: Keymaps
		keys = {
			{
				"<leader>lg",
				function()
					require("snacks").lazygit()
				end,
				desc = "Lazygit",
			},
			{
				"<leader>gl",
				function()
					require("snacks").lazygit.log()
				end,
				desc = "Lazygit Logs",
			},
			{
				"<leader>rN",
				function()
					require("snacks").rename.rename_file()
				end,
				desc = "Fast Rename Current File",
			},
			{
				"<leader>dB",
				function()
					require("snacks").bufdelete()
				end,
				desc = "Delete or Close Buffer  (Confirm)",
			},

			-- Snacks Picker
			{
				"<leader>pf",
				function()
					require("snacks").picker.files()
				end,
				desc = "Find Files (Snacks Picker)",
			},
			{
				"<leader>pc",
				function()
					require("snacks").picker.files({ cwd = "~/dotfiles/nvim/.config/nvim/lua" })
				end,
				desc = "Find Config File",
			},
			{
				"<leader>ps",
				function()
					require("snacks").picker.grep()
				end,
				desc = "Grep word",
			},
			{
				"<leader>pws",
				function()
					require("snacks").picker.grep_word()
				end,
				desc = "Search Visual selection or Word",
				mode = { "n", "x" },
			},
			{
				"<leader>pk",
				function()
					require("snacks").picker.keymaps({ layout = "ivy" })
				end,
				desc = "Search Keymaps (Snacks Picker)",
			},
			{
				"<leader>pr",
				function()
					require("snacks").picker.recent()
				end,
				desc = "Find recent files (Snacks Picker)",
			},

			-- Git Stuff
			{
				"<leader>gbr",
				function()
					require("snacks").picker.git_branches({ layout = "select" })
				end,
				desc = "Pick and Switch Git Branches",
			},

			-- Other Utils
			{
				"<leader>th",
				function()
					require("snacks").picker.colorschemes({ layout = "ivy" })
				end,
				desc = "Pick Color Schemes",
			},
			{
				"<leader>vh",
				function()
					require("snacks").picker.help()
				end,
				desc = "Help Pages",
			},
		},
	},
	{
		src = "folke/todo-comments.nvim",
		event = { "BufReadPre", "BufNewFile" },
		keys = {
			{
				"<leader>pt",
				function()
					require("snacks").picker.todo_comments()
				end,
				desc = "Todo",
			},
			{
				"<leader>pT",
				function()
					require("snacks").picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
				end,
				desc = "Todo/Fix/Fixme",
			},
		},
	},

	{ src = "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{ src = "nvim-treesitter/nvim-treesitter", event = { "BufReadPre", "BufNewFile" }, build = ":TSUpdate" },
	{
		src = "windwp/nvim-ts-autotag",
		ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte" },
	},
	{
		src = "folke/trouble.nvim",
		opts = {
			focus = true,
		},
		cmd = "Trouble",
		keys = {
			{ "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
			{
				"<leader>xd",
				"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
				desc = "Open trouble document diagnostics",
			},
			{ "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
			{ "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
			{ "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
		},
	},
	{ src = "mbbill/undotree" },
	{
		src = "folke/which-key.nvim",
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
	},
	{ src = "gelguy/wilder.nvim" },
}

for i, plugin in ipairs(plugins) do
	if type(plugin) == "string" then
		plugins[i] = { src = "https://github.com/" .. plugin }
	elseif type(plugin) == "table" then
		if plugin.src == nil and plugin[1] ~= nil then
			plugin.src = plugin[1]
			plugin[1] = nil
		end
		if plugin.src ~= nil and not plugin.src:match("://") then
			plugin.src = "https://github.com/" .. plugin.src
		end
	end
end

vim.pack.add(plugins)

-- After ensuring plugins are available, execute all local plugin config modules.
-- Some modules return plugin specs, others directly configure their plugins.
do
	local config_dir = vim.fn.stdpath("config")
	local plugins_dir = config_dir .. "/lua/alex/plugins"
	local plugin_files = vim.fn.globpath(plugins_dir, "**/*.lua", false, true)

	table.sort(plugin_files)

	for _, file in ipairs(plugin_files) do
		pcall(dofile, file)
	end
end
