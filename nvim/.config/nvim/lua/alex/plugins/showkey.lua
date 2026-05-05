vim.pack.add({
    {
        src = "https://github.com/nvzone/showkeys",
        data = {
            cmd = "ShowkeysToggle",
            opts = {
                maxkeys    = 3,
                show_count = true,
                winopts    = {
                    focusable = false,
                    relative = "editor",
                    style = "minimal",
                    border = "single",
                    height = 1,
                    row = 1,
                    col = 0,
                }
            }
        }
    }
}, { confirm = false })

require("showkeys").setup()
