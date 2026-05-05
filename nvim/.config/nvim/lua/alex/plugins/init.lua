vim.pack.add(
    { "https://github.com/mfussenegger/nvim-dap", "https://github.com/nvim-lua/plenary.nvim",
        "https://github.com/christoomey/vim-tmux-navigator", "https://github.com/nvim-telescope/telescope.nvim",
        "https://github.com/nvim-tree/nvim-web-devicons", "https://github.com/neovim/nvim-lspconfig",
        "https://github.com/mfussenegger/nvim-dap", "https://github.com/NvChad/nvim-colorizer.lua",
        "https://github.com/romgrk/fzy-lua-native", "https://github.com/hrsh7th/nvim-cmp",
        { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim", data = { build = "make" } },
        { src = "https://github.com/mfussenegger/nvim-dap",                    data = { event = "VeryLazy" } }
    }, { confirm = false })

vim.api.nvim_create_autocmd('PackChanged', {
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind

        if name == 'telescope-fzf-native' then
            vim.system({ 'make' }, { cwd = ev.data.path })
        end
    end
})

-- vim.pack.update({ "https://github.com/nvim-telescope/telescope-fzf-native.nvim" })


require("alex.plugins.auto-pairs")
-- require("alex.core.utils").all(vim.fn.stdpath("config") .. "/lua/alex/plugins", "alex.plugins.")
require("alex.plugins.azfunc")
require("alex.plugins.barbar")
require("alex.plugins.cmake-tools")
require("alex.plugins.colorscheme")
require("alex.plugins.dotnet-utils")
require("alex.plugins.easy-dotnet")
require("alex.plugins.formatting")
require("alex.plugins.gitstuff")
require("alex.plugins.gitworktree")
require("alex.plugins.incline")
require("alex.plugins.inlay-hints")
require("alex.plugins.linting")
require("alex.plugins.mini")
require("alex.plugins.neotest")
require("alex.plugins.noice")
require("alex.plugins.lualine")
require("alex.plugins.nvim-cmp")
require("alex.plugins.nvim-dap-ui")
require("alex.plugins.nvim-dap")
require("alex.plugins.nvim-nio")
require("alex.plugins.nvim-ufo")
require("alex.plugins.obsidian")
require("alex.plugins.oil")
require("alex.plugins.rust-tools")
require("alex.plugins.showkey")
require("alex.plugins.smear")
require("alex.plugins.snacks")
require("alex.plugins.tailwind-tools")
require("alex.plugins.telescope")
require("alex.plugins.todo-comments")
require("alex.plugins.treesitter")
require("alex.plugins.trouble")
require("alex.plugins.undotree")
require("alex.plugins.uv")
require("alex.plugins.which-key")
require("alex.plugins.wilder")
require("alex.plugins.auto-pairs")
require("alex.plugins.lsp.lspconfig")
require("alex.plugins.lsp.mason")
