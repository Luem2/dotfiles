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

	-- visual multicursor
	{
		"mg979/vim-visual-multi",
	},

	-- rest.nvim
	{
		"rest-nvim/rest.nvim",
		dependencies = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("rest-nvim").setup({
				--- Get the same options from Packer setup
			})
		end,
	},
}
