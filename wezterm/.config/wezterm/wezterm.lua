local wezterm = require("wezterm")
local os_name = os.getenv("OS")

local config = {
	window_background_opacity = 0.96,
	disable_default_key_bindings = true,
	color_scheme = "tokyonight",
	enable_tab_bar = false,
	font = wezterm.font({
		family = "CaskaydiaCove Nerd Font",
		scale = 1.2,
	}),
	font_size = 12,
	window_decorations = "RESIZE",

	-- keys assignments
	keys = {
		{ key = "c", mods = "CTRL|SHIFT", action = wezterm.action.CopyTo("Clipboard") },
		{ key = "v", mods = "CTRL|SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
		{ key = "+", mods = "CTRL|SHIFT", action = wezterm.action.IncreaseFontSize },
		{ key = "_", mods = "CTRL|SHIFT", action = wezterm.action.DecreaseFontSize },
		{ key = ")", mods = "CTRL|SHIFT", action = wezterm.action.ResetFontSize },
	},
}

if os_name and type(os_name) == "string" and string.find(os_name:lower(), "windows") then
	config.default_domain = "WSL:Ubuntu"
end

return config
