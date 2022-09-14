
-- Tokyonight scheme config

require"tokyonight".setup({
	style = "storm",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = "italic",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		sidebars = "transparent",
		floats = "normal"
	},
	sidebars = { "vista_kind" },
	lualine_bold = true,
})

vim.o.termguicolors = true

vim.cmd([[
	colorscheme tokyonight
]])
