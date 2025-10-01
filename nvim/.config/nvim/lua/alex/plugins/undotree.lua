return {
	"mbbill/undotree",
	config = function()
		local utils = require("alex.core.utils")
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		if utils.getOsName() == "Windows" then
			vim.g.undotree_DiffCommand = "FC"
		end
	end,
}
