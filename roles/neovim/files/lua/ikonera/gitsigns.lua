
-- Gitsigns config

local signs = require"gitsigns"

signs.setup {
	current_line_blame = false,
	current_line_blame_opts = {
		delay = 0,
		virt_text = true,
		virt_text_pos = "right_align",
	},
	sign_priority = 1,

}
