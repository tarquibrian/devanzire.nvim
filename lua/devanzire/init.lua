local M = {}

local themes = {
	devanzire = {
		background = "#606060",
		foreground = "#242424",
		accent = "#bd93f9",
	},
	devanzire_orange = {
		background = "#2b2b2b",
		foreground = "#f8f8f2",
		accent = "#ffb86c",
	},
	devanzire_coffe = {
		background = "#3e3e3e",
		foreground = "#d4be98",
		accent = "#c3a769",
	},
}

-- @return nil
-- function M.set_background()
-- 	local default_color = "#606060" -- Elige el color de fondo por defecto que prefieras
-- 	vim.cmd("highlight Normal guibg=" .. default_color)
-- end
--
-- ---@return nil
-- function M.load()
-- 	M.set_background()
-- end
--
-- return M

function M._load(style)
	if themes[style] then
		M.loadTheme(themes[style])
	else
		print("Thema no disponible")
	end
end

-- @param opts Config|nil
function M.loadTheme(opts)
	-- local default_color = "#606060" -- Elige el color de fondo por defecto que prefieras
	-- vim.cmd("highlight Normal guibg=" .. opts.)
	vim.cmd("highlight Normal guibg=" .. opts.background)
	vim.cmd("highlight Normal guifg=" .. opts.foreground)
	vim.cmd("highlight Comment guifg=" .. opts.accent)
end

return M
