local M = {}
M.load = function(opts)
	opts = opts or {}
	vim.cmd("colorscheme neodark")
end

return M
