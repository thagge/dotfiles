return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"hrsh7th/cmp-nvim-lsp",
		"neovim/nvim-lspconfig",
		-- "saghen/blink.cmp",
	},

	opts = {
		reqistries = {
			"github:mason-org/mason-registry",
			"github:crashdummyy/mason-registry",
		},
	},
	config = function()
		-- import mason and mason_lspconfig
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			registries = {
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			automatic_enable = false,
			-- servers for mason to install
			ensure_installed = {
				"lua_ls",
				"svelte",
				"ts_ls", -- currently using a ts plugin
				"html",
				"cssls",
				"tailwindcss",
				"angularls",
				"marksman",
				"biome",
				"clangd",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"isort", -- python formatter
				"kulala-fmt", --http formatter
				"pylint",
				"clangd",
				"denols",
				"svelte",
				"biome",
				"ast_grep",
				"roslyn",
				"netcoredbg",
				"csharpier",
				"shfmt",
			},
		})
	end,
}
