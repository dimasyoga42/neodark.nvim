vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "neodark"
local based = require("colors.colors")
--saya
local M = {}
local colors = {
	bg = based.default.black,
	fg = based.default.white,
	comment = based.default.pink[700], -- diperbaiki dari "commant"
	keyword = based.default.blue[600],
	string = based.default.white,
	function_name = based.default.pink[700],
	number = based.default.red[800],
	variable = based.default.red[700],
	tabs = based.default.green[700],
	border = based.default.green[700],
	border_active = based.default.purple[700],
	search = "#FF5733", -- Warna untuk pencarian
	cursor_line = "#3B3B3B", -- Warna untuk baris kursor
	cursor = based.default.white,
}

-- Fungsi untuk set highlight
local function set_highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

set_highlight("Normal", { fg = colors.fg, bg = colors.bg })
set_highlight("Commant", { fg = colors.comment, italic = true })
set_highlight("keyword", { fg = colors.keyword, bold = true })
set_highlight("string", { fg = colors.string })
set_highlight("Function", { fg = colors.function_name, bold = true })
set_highlight("Number", { fg = colors.number })
set_highlight("Variable", { fg = colors.variable })
set_highlight("TabLine", { fg = colors.fg, bg = colors.tabs })
set_highlight("FloatBorder", { fg = colors.border, bg = colors.bg })
set_highlight("WinSeparator", { fg = colors.border, bg = colors.bg })
set_highlight("LspInfoBorder", { fg = colors.border_active, bg = colors.bg })
set_highlight("Search", { fg = colors.bg, bg = colors.search, bold = true }) -- Pencarian
set_highlight("CursorLine", { bg = colors.cursor_line }) -- Baris kursor aktif
set_highlight("Cursor", { fg = colors.bg, bg = colors.cursor }) -- Kursor

set_highlight("TabLine", { fg = colors.fg, bg = colors.tabs })
set_highlight("TelescopeBorder", { fg = colors.border_active, bg = colors.bg })

return M
