-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- rest.nvim
keymap.set("n", "<leader>rr", "<Plug>RestNvim", opts)
keymap.set("n", "<leader>rp", "<Plug>RestNvimPreview", opts)
keymap.set("n", "<leader>rl", "<Plug>RestNvimLast", opts)

-- icons (emojis)
keymap.set("n", "<Leader>in", "<cmd>IconPickerNormal<cr>", opts)
keymap.set("n", "<Leader>iy", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
-- TODO: Agregar las descripciones de telescope a emoji & rest.nvim

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
}

local opts_wk = {
	prefix = "<leader>",
}

wk.register(mappings, opts_wk)
