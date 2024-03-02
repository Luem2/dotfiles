-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- select all
keymap.set("n", "<leader>a", "gg<S-v>G", opts)

-- fast navigation between the first 5 buffers
keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opts)

-- smooth motions
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- increment/decrement number
keymap.set("n", "<leader>+", "<C-a>", opts)
keymap.set("n", "<leader>-", "<C-x>", opts)

-- oil.nvim
keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })

-- rest.nvim
keymap.set("n", "<leader>rr", "<Plug>RestNvim", opts)
keymap.set("n", "<leader>rp", "<Plug>RestNvimPreview", opts)
keymap.set("n", "<leader>rl", "<Plug>RestNvimLast", opts)

-- icons (emojis)
keymap.set("n", "<Leader>in", "<cmd>IconPickerNormal<cr>", opts)
keymap.set("n", "<Leader>iy", "<cmd>IconPickerYank<cr>", opts)

-- package-info
keymap.set({ "n" }, "<LEADER>ns", require("package-info").show, opts)
keymap.set({ "n" }, "<LEADER>nc", require("package-info").hide, opts)
keymap.set({ "n" }, "<LEADER>nt", require("package-info").toggle, opts)
keymap.set({ "n" }, "<LEADER>nu", require("package-info").update, opts)
keymap.set({ "n" }, "<LEADER>nd", require("package-info").delete, opts)
keymap.set({ "n" }, "<LEADER>ni", require("package-info").install, opts)
keymap.set({ "n" }, "<LEADER>np", require("package-info").change_version, opts)

-- Documentacion de los atajos
local wk = require("which-key")

local mappings = {
	r = {
		name = "rest",
		r = { "Run the request under the cursor" },
		p = { "Preview the request cURL command" },
		l = { "Re-run the last request" },
	},
	i = {
		name = "icons/emojis",
		n = { "Insert icon selected" },
		y = { "Copy the emoji to clipboard" },
	},
	n = {
		name = "npm/package-info",
		s = { "Show dependency versions" },
		c = { "Hide dependency versions" },
		t = { "Toggle dependency versions" },
		u = { "Update dependency on the line" },
		d = { "Delete dependency on the line" },
		i = { "Install a new dependency" },
		p = { "Install a different dependency version" },
	},
}

local opts_wk = {
	prefix = "<leader>",
}

wk.register(mappings, opts_wk)
