vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "neodark"
--saya
local M = {}
local colors = {
	bg = "#000000",
	fg = "#F4F6FF",
	commant = "#15B392",
	keyword = "#FF0080",
	string = "#15B392",
	function_name = "#FFEB00",
	number = "#7C00FE",
	variable = "#F5004F",
	tabs = "#222831",
	border = "#15F5BA",
	border_active = "#15F5BA",
}

local function set_highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

set_highlight("normal", { fg = colors.fg, bg = colors.bg })
set_highlight("commant", { fg = colors.commant, italic = true })
set_highlight("keyword", { fg = colors.keyword, bold = true })
set_highlight("string", { fg = colors.string })
set_highlight("Function", { fg = colors.function_name, bold = true })
set_highlight("Number", { fg = colors.number })
set_highlight("Variable", { fg = colors.variable })
set_highlight("TabLine", { fg = colors.fg, bg = colors.tabs })
set_highlight("FloatBorder", { fg = colors.border, bg = colors.bg })
set_highlight("WinSeparator", { fg = colors.border, bg = colors.bg })
set_highlight("LspInfoBorder", { fg = colors.border_active, bg = colors.bg })
set_highlight("TelescopeBorder", { fg = colors.border_active, bg = colors.bg })

return M
