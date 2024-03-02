-- bootstrap lazy.nvim, LazyVim and your plugins

if vim.g.vscode then
	-- VSCode extension
	return
else
	require("config.lazy")
end
