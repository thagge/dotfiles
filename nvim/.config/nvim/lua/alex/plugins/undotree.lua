vim.pack.add({
	{
		src = "https://github.com/mbbill/undotree",
		data = {
			config = function()
				local utils = require("alex.core.utils")
				vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
				if utils.getOsName() == "Windows" then
					vim.g.undotree_DiffCommand = "FC"
				end
			end,
		}
	}
}, { confirm = false })

-- require("undotree").setup()
