vim.pack.add({ "https://github.com/ramboe/ramboe-dotnet-utils" }, { confirm = false })

require("dap-scope-walker").setup({
    interval = 250,
    -- ...
})
require("fzf-lua-pickers-razor-outline").setup({
    fzflua_razor_outline_preview_context = 7,
    fzflua_razor_outline_preview_window = "up:65%",
    fzflua_razor_outline_prompt = "RazorOutline> ",
})
