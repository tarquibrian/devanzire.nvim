local config = require("vanzire.config")

local M = {}

function M._load()
	-- if not M._options then
	M._options = config.options
	-- end

	M.load(M._options)
end

-- @param opts Config|nil
function M.load(opts)
	-- if opts then
	-- 	config.extend(opts)
	-- end
	-- theme.set_highlights(opts)
	vim.notify_once(tostring(opts.msg))
end

M.setup = config.setup

return M
