vim.cmd("highlight clear")
vim.cmd("syntax reset")
vim.g.colors_name = "neodark"
--saya
local M = {}
local default = {
	black = "#000000",
	white = "#FFFFFF",
	gray = {
		[50] = "#F9FAFB",
		[100] = "#F3F4F6",
		[200] = "#E5E7EB",
		[300] = "#D1D5DB",
		[400] = "#9CA3AF",
		[500] = "#6B7280",
		[600] = "#4B5563",
		[700] = "#374151",
		[800] = "#1F2937",
		[900] = "#111827",
	},
	red = {
		[50] = "#FDF2F2",
		[100] = "#FEE2E2",
		[200] = "#FECACA",
		[300] = "#FBBF24",
		[400] = "#F87171",
		[500] = "#EF4444",
		[600] = "#DC2626",
		[700] = "#B91C1C",
		[800] = "#991B1B",
		[900] = "#7F1D1D",
	},
	yellow = {
		[50] = "#FFFBEB",
		[100] = "#FEF3C7",
		[200] = "#FDE68A",
		[300] = "#FCD34D",
		[400] = "#FBBF24",
		[500] = "#F59E0B",
		[600] = "#D97706",
		[700] = "#B45309",
		[800] = "#92400E",
		[900] = "#78350F",
	},
	green = {
		[50] = "#ECFDF5",
		[100] = "#D1FAE5",
		[200] = "#A7F3D0",
		[300] = "#6EE7B7",
		[400] = "#34D399",
		[500] = "#10B981",
		[600] = "#059669",
		[700] = "#047857",
		[800] = "#065F46",
		[900] = "#064E3B",
	},
	blue = {
		[50] = "#EFF6FF",
		[100] = "#DBEAFE",
		[200] = "#BFDBFE",
		[300] = "#93C5FD",
		[400] = "#60A5FA",
		[500] = "#3B82F6",
		[600] = "#2563EB",
		[700] = "#1D4ED8",
		[800] = "#1E40AF",
		[900] = "#1E3A8A",
	},
	indigo = {
		[50] = "#EEF2FF",
		[100] = "#E0E7FF",
		[200] = "#C7D2FE",
		[300] = "#A5B4FC",
		[400] = "#818CF8",
		[500] = "#6366F1",
		[600] = "#4F46E5",
		[700] = "#4338CA",
		[800] = "#3730A3",
		[900] = "#312E81",
	},
	purple = {
		[50] = "#F5F3FF",
		[100] = "#EDE9FE",
		[200] = "#DDD6FE",
		[300] = "#C4B5FD",
		[400] = "#A78BFA",
		[500] = "#8B5CF6",
		[600] = "#7C3AED",
		[700] = "#6D28D9",
		[800] = "#5B21B6",
		[900] = "#4C1D95",
	},
	pink = {
		[50] = "#FDF2F8",
		[100] = "#FCE7F3",
		[200] = "#FBCFE8",
		[300] = "#F9A8D4",
		[400] = "#F472B6",
		[500] = "#EC4899",
		[600] = "#DB2777",
		[700] = "#BE185D",
		[800] = "#9D174D",
		[900] = "#831843",
	},
	orange = {
		[50] = "#FFFAF1",
		[100] = "#FEF2C7",
		[200] = "#FDE68A",
		[300] = "#FCD34D",
		[400] = "#FB923C",
		[500] = "#F97316",
		[600] = "#EA580C",
		[700] = "#C2410C",
		[800] = "#9A3412",
		[900] = "#7C2D12",
	},
}

local colors = {
	bg = default.black,
	fg = default.white,
	comment = default.pink[700], -- diperbaiki dari "commant"
	keyword = default.blue[600],
	string = default.white,
	function_name = default.pink[700],
	number = default.red[800],
	variable = default.red[700],
	tabs = default.green[700],
	border = default.green[700],
	border_active = default.purple[700],
	search = "#FF5733", -- Warna untuk pencarian
	cursor_line = "#3B3B3B", -- Warna untuk baris kursor
	cursor = default.white,
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
