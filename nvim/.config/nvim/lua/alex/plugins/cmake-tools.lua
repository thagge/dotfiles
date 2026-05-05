vim.pack.add({ "https://github.com/civitasv/cmake-tools.nvim" })
require("cmake-tools").setup({
	cmake_command = "cmake",
})
