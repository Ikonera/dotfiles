
-- Telescope config

local telescope = require'telescope'
local actions = require"telescope.actions"

telescope.setup({
	defaults = {
		prompt_prefix = "  ",
		selection_caret = " ",
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

vim.api.nvim_set_keymap('n', "<Space>f", "<cmd>Telescope find_files hidden=true<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>g", "<cmd>Telescope live_grep<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>p", "<cmd>Telescope project<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap('n', "<Space>b", "<cmd>Telescope buffers hidden=true<CR>", { silent = true, noremap = true })
