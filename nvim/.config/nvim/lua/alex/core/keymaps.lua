local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NOTE: Disable the arrow keys
vim.keymap.set({ "n", "v" }, "<left>", "<nop>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<right>", "<nop>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<up>", "<nop>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<down>", "<nop>", { noremap = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Paste without replacing clibboard content
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("v", "p", '"_dp', opts)

-- Delete without copying
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<C-c>", ":nohl<CR>", { desc = "Clear search hl", silent = true }) -- clears search highlights

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "x", '"_x', opts) -- prevents deleted character from copying to clipboard

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.keymap.set("n", "<leader>tx", "<cmd>BufferClose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>BufferNext<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>BufferPrevious<CR>", { desc = "Go to prev tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current tab in new tab" })
vim.keymap.set(
	"n",
	"<leader>tc",
	"<cmd>BufferCloseAllButCurrent<CR>",
	{ desc = "Close all tabs except the current one" }
)
vim.keymap.set(
	"n",
	"<leader>tv",
	"<cmd>BufferCloseAllButVisible<CR>",
	{ desc = "Close all tabs except those that are visible" }
)
vim.keymap.set("n", "<leader>t1", "<cmd>BufferGoto 1<CR>", { desc = "Go to tab number 1" })
vim.keymap.set("n", "<leader>t2", "<cmd>BufferGoto 2<CR>", { desc = "Go to tab number 2" })
vim.keymap.set("n", "<leader>t3", "<cmd>BufferGoto 3<CR>", { desc = "Go to tab number 4" })
vim.keymap.set("n", "<leader>t4", "<cmd>BufferGoto 4<CR>", { desc = "Go to tab number 3" })
vim.keymap.set("n", "<leader>t5", "<cmd>BufferGoto 5<CR>", { desc = "Go to tab number 5" })
vim.keymap.set("n", "<leader>t6", "<cmd>BufferGoto 6<CR>", { desc = "Go to tab number 6" })
vim.keymap.set("n", "<leader>t7", "<cmd>BufferGoto 7<CR>", { desc = "Go to tab number 7" })
vim.keymap.set("n", "<leader>t8", "<cmd>BufferGoto 8<CR>", { desc = "Go to tab number 8" })
vim.keymap.set("n", "<leader>t9", "<cmd>BufferGoto 9<CR>", { desc = "Go to tab number 9" })
-- split
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
vim.keymap.set({'n', 't'}, '<C-h>', '<C-w>h')
vim.keymap.set({'n', 't'}, '<C-j>', '<C-w>j')
vim.keymap.set({'n', 't'}, '<C-k>', '<C-w>k')
vim.keymap.set({'n', 't'}, '<C-l>', '<C-w>l')

-- Copy filepath to clipboard
vim.keymap.set("n", "<leader>fp", function()
	local filepath = vim.fn.expand("%:~") -- Gets the file path relative to the home directory
	vim.fn.setreg("+", filepath) -- Copy the file path to the clipboard register
	print("File path copied to clipboard: " .. filepath)
end, { desc = "Copy file path to clipboard" })
