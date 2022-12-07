
-- Telescope config

local telescope = require'telescope'
local fb_actions = require"telescope".extensions.file_browser.actions

telescope.setup({
	defaults = {
		prompt_prefix = "  ",
		selection_caret = " ",
		file_ignore_patterns = {
			"node_modules/",
			"dist/",
			".git/",
			".next/",
			".idea/",
			".vscode/",
			"target/",
		},
	},
	extensions = {
		file_browser = {
			mappings = {
				["n"] = {
					["n"] = fb_actions.create,
				}
			}
		},
		repo = {
			list = {
				search_dirs = {
					"~/Lab",
				}
			}
		}
	}
})

telescope.load_extension 'file_browser'
telescope.load_extension 'project'
telescope.load_extension 'gh'
telescope.load_extension 'media_files'
telescope.load_extension 'repo'

vim.api.nvim_set_keymap('n', "ff", "<cmd>Telescope find_files hidden=true<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "fb", "<cmd>Telescope file_browser<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>g", "<cmd>Telescope live_grep<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "fp", "<cmd>Telescope project<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>b", "<cmd>Telescope buffers hidden=true<CR>", { silent = true, noremap = true })
