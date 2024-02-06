local wezterm = require('wezterm')
local os_name = os.getenv("OS")

local config = {
    window_background_opacity = 0.96,
    color_scheme = "tokyonight",
    enable_tab_bar = false,
    font = wezterm.font({
        family = "CaskaydiaCove Nerd Font",
        scale = 1.2,
    }),
    font_size = 12,
}

if os_name and type(os_name) == 'string' and string.find(os_name:lower(), 'windows') then
    config.default_domain = 'WSL:Ubuntu'
end

return config
