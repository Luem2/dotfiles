return {
	{
		"xiyaowong/transparent.nvim",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		opts = {
			transparent_background = true,
			flavour = "mocha",
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = false,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
		},
	},
	{
		"miikanissi/modus-themes.nvim",
		name = "modus",
		priority = 1000,
	},
	{
		"rebelot/kanagawa.nvim",
		name = "kanagawa",
		priority = 1000,
	},
	{
		"navarasu/onedark.nvim",
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"morhetz/gruvbox",
		priority = 1000,
	},
	{
		"Mofiqul/vscode.nvim",
		priority = 1000,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa",
		},
	},
}
