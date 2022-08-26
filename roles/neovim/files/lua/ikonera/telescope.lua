
-- Telescope config

local telescope = require'telescope'

telescope.setup({
	defaults = {
		prompt_prefix = "Files: ",
		selection_caret = "   ",
		file_ignore_patterns = {
			"node_modules/",
			"dist/",
			".git/",
			".next/",
			".idea/",
			".vscode/",
		},
	},
})

telescope.load_extension 'file_browser'
telescope.load_extension 'project'

