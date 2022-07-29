
-- Treesitter configuration

require"nvim-ts-autotag".setup()

require"nvim-treesitter.configs".setup({
	ensure_installed = {
		"bash", "lua",
		"javascript", "json", "jsdoc", "typescript", "tsx", "prisma", "html", "css", "yaml",
		"rust", "dockerfile",
	},
	autopairs = {
		enable = true,
	},
	rainbow = {
		enable = true,
		colors = {
			"#E06C75",
			"#E5C07B",
			"#98C379",
			"#56B6C2",
			"#61AFEF",
			"#C678DD",
			"#E06C75"
		},
	}
})

