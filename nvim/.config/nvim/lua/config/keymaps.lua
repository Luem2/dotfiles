-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- select all
keymap.set("n", "<leader>a", "gg<S-v>G", opts)

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- lazyvim specific
if not vim.g.vscode then
	-- smooth motions
	keymap.set("n", "<C-d>", "<C-d>zz")
	keymap.set("n", "<C-u>", "<C-u>zz")

	-- oil.nvim
	keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

	-- vscode specific
else
	-- disable integrated terminal
	keymap.set({ "n", "v" }, "<C-/>", "<Nop>")

	-- disable lazy menu
	keymap.set({ "n", "v" }, "<leader>l", "<Nop>")
end
