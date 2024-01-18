return {
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

	-- markdown preview
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- package-info
	{
		"vuki656/package-info.nvim",
		config = function()
			require("package-info").setup()
		end,
	},
}
