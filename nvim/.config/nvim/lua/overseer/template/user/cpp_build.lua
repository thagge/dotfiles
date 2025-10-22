return {
	name = "g++ build",
	builder = function()
		-- Full path to current file (see :help expand())
		local file = vim.fn.expand("%:p")
		local cwd = vim.fn.getcwd()
		return {
			cmd = { "g++" },
			args = { "-g", file, "-std=c++20", "-o", cwd .. "/rooster" },
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
	condition = {
		filetype = { "cpp" },
	},
}
