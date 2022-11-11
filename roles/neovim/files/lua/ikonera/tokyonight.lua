
-- Tokyonight scheme config

require"tokyonight".setup({
	style = "night",
	transparent = true,
	terminal_colors = true,
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {},
		variables = {},
		sidebars = "transparent",
		floats = "dark"
	},
	sidebars = { "vista_kind" },
	lualine_bold = true,
})

vim.o.termguicolors = true

vim.cmd([[
	colorscheme tokyonight-night
]])
