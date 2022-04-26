local nnn = require"nnn"
local builtin = require"nnn".builtin

nnn.setup {
	mappings = {
		{ "<C-t>", builtin.open_in_tab },
		{ "<C-v>", builtin.open_in_vsplit },
	},
}
