-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- smooth motions
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- disable keymaps
keymap.set({ "n", "v" }, "Q", "<Nop>")
keymap.set({ "n", "v" }, "&", "<Nop>")
-- NOTE: temporarily disabled until I get used to not using them.
keymap.set({ "n", "i", "v" }, "<C-c>", "<Nop>")
keymap.set("n", "<leader>e", "<Nop>")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

-- oil.nvim
keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })

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

-- gen.nvim (ollama shortcuts)
keymap.set({ "n", "v" }, "<Leader>om", ":Gen<CR>", opts)
keymap.set({ "n", "v" }, "<Leader>oa", ":Gen Ask<CR>", opts)
keymap.set({ "n", "v" }, "<leader>oG", ":Gen Generate<CR>", opts)
keymap.set({ "n", "v" }, "<leader>oc", ":Gen Chat<CR>", opts)
keymap.set("v", "<leader>og", ":Gen Enhance_Grammar_Spelling<CR>", opts)
keymap.set("v", "<leader>oC", ":Gen Enhance_Code<CR>", opts)
keymap.set("v", "<leader>os", ":Gen Summarize<CR>", opts)
keymap.set("v", "<leader>or", ":Gen Review_Code<CR>", opts)
keymap.set("v", "<leader>ox", ":Gen Change<CR>", opts)
keymap.set("v", "<leader>ow", ":Gen Enhance_Wording<CR>", opts)
keymap.set("v", "<leader>odc", ":Gen Make_Concise<CR>", opts)
keymap.set("v", "<leader>odl", ":Gen Make_List<CR>", opts)
keymap.set("v", "<leader>odt", ":Gen Make_Table<CR>", opts)

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
	o = {
		name = "gen.nvim/ollama",
		a = { "Ask ollama" },
		c = { "Chat ollama" },
		C = { "Enhance code" },
		d = {
			name = "Make actions",
			c = { "Make concise" },
			l = { "Make list" },
			t = { "Make table" },
		},
		g = { "Enhance grammar" },
		G = { "Generate" },
		m = { "Show ollama options menu" },
		r = { "Review code" },
		s = { "Summarize" },
		w = { "Enhance wording" },
		x = { "Change" },
	},
}

local opts_wk = {
	prefix = "<leader>",
}

wk.register(mappings, opts_wk)
