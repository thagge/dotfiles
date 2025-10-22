return {
	name = "g++ build and run",
	builder = function()
		-- Full path to current file (see :help expand())
		local file = vim.fn.expand("%:p")
		local outputFile = vim.fn.getcwd() .. "/rooster"

		return {
			cmd = string.format("g++ %s -std=c++20 -o %s && %s", file, outputFile, outputFile),
			components = { { "on_output_quickfix", open = true }, "default" },
		}
	end,
	condition = {
		filetype = { "cpp" },
	},
}
