return {
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
		dependencies = { "rafamadriz/friendly-snippets" },
	},

	-- snippets
	{
		"rafamadriz/friendly-snippets",
	},

	-- codeium inline
	{
		"Exafunction/codeium.vim",
		event = "BufEnter",
		config = function()
			-- disable default keymaps from command line
			vim.g.codeium_disable_bindings = 1

			vim.keymap.set("i", "<C-CR>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-.>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-Z>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true, silent = true })
			vim.keymap.set("i", "<C-X>", function()
				return vim.fn["codeium#Complete"]()
			end, { expr = true, silent = true })
		end,
	},

	-- codeium with cmp
	-- {
	-- 	"nvim-cmp",
	-- 	dependencies = {
	-- 		-- codeium
	-- 		{
	-- 			"Exafunction/codeium.nvim",
	-- 			cmd = "Codeium",
	-- 			build = ":Codeium Auth",
	-- 			opts = {},
	-- 		},
	-- 	},
	-- 	---@param opts cmp.ConfigSchema
	-- 	opts = function(_, opts)
	-- 		table.insert(opts.sources, 1, {
	-- 			name = "codeium",
	-- 			group_index = 1,
	-- 			priority = 100,
	-- 		})
	-- 	end,
	-- },
}
