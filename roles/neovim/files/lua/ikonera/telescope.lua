
-- Telescope config

local telescope = require'telescope'

telescope.setup({
	defaults = {
		prompt_prefix = " ❯ ",
		selection_caret = "❯ ",
		file_ignore_patterns = {
			"node_modules/",
			"dist/",
			".git/",
			".next/",
			".idea/",
			".vscode/",
		},
		vimgrep_arguments = {
			"rg",
		},
	},
	pickers = {
		find_files = {
			n = {
				["ls"] = function (prompt_bufnr)
					local selection = require"telescope.actions.state".get_selected_entry()
					local dir = vim.fn.fnamemodify(selection.path, ":p:h")
					require"telescope.actions".close(prompt_bufnr)
					vim.cmd(string.format("silent cd %s", dir))
				end
			},
		},
	},
})

telescope.load_extension 'file_browser'
telescope.load_extension 'project'

