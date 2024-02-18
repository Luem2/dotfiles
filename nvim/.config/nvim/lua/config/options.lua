-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- tab & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = true

-- exrc (local .nvimrc config)
opt.exrc = true

if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove Nerd Font:h14"
	vim.g.neovide_transparency = 0.80
end
