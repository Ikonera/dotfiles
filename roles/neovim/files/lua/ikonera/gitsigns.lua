
-- Gitsigns config

local signs = require"gitsigns"

signs.setup({
	signs = {
		add          = {hl = 'GitSignsAdd'   , text = '⏽', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
		change       = {hl = 'GitSignsChange', text = '⏽', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
		delete       = {hl = 'GitSignsDelete', text = '⏽', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
		topdelete    = {hl = 'GitSignsDelete', text = '⏽', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
		changedelete = {hl = 'GitSignsChange', text = '⏽', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
	},
	signcolumn = true,
	current_line_blame = false,
	current_line_blame_opts = {
		delay = 0,
		virt_text = true,
		virt_text_pos = "overlay",
	},
	sign_priority = 6,
})
