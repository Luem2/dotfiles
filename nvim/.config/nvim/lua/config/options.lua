-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- neovide settings
if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove Nerd Font:h14"
	vim.g.neovide_transparency = 0.80
end

-- vscode settings
if vim.g.vscode then
	local vscode = require("vscode-neovim")

	vim.notify = vscode.notify
end
