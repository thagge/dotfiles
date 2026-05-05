vim.pack.add({
	{
		src = "https://github.com/benomahony/uv.nvim",
		data = {
			opts = {
				picker_integration = true,
			},
		}
	}
}, { confirm = false })
require("uv").setup()
