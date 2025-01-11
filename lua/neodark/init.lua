local M = {}
local neodark = require("colors.neodark")
M.load = function(opts)
	opts = opts or {}
	neodark.apply(opts)
	vim.cmd("colorscheme neodark")
end

return M
